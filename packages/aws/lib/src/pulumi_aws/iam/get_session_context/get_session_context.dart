import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_session_context_args.dart';
import 'get_session_context_result.dart';

/// This data source provides information on the IAM source role of an STS assumed role. For non-role ARNs, this data source simply passes the ARN through in `issuer_arn`.
///
/// For some AWS resources, multiple types of principals are allowed in the same argument (e.g., IAM users and IAM roles). However, these arguments often do not allow assumed-role (i.e., STS, temporary credential) principals. Given an STS ARN, this data source provides the ARN for the source IAM role.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Find the Runner's Source Role
///
/// Combined with `aws.getCallerIdentity`, you can get the current user's source IAM role ARN (`issuer_arn`) if you're using an assumed role. If you're not using an assumed role, the caller's (e.g., an IAM user's) ARN will simply be passed through. In environments where both IAM users and individuals using assumed roles need to apply the same configurations, this data source enables seamless use.
Future<GetSessionContextResult> getSessionContext(
  GetSessionContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getSessionContext:getSessionContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionContextResult.fromMap(result);
}

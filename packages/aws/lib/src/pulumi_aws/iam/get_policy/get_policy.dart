import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM policy.
///
/// ## Example Usage
///
/// ### By ARN
///
///
///
/// ### By Name
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

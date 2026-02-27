import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicy:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

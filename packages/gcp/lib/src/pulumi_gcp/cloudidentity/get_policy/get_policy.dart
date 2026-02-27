import 'package:pulumi/pulumi.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Use this data source to retrieve a Cloud Identity policy.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicy:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

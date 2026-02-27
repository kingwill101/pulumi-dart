import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Use this data source to retrieve a Cloud Identity policy.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

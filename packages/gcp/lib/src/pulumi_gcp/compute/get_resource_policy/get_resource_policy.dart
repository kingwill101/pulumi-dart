import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';

Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}

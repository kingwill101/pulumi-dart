import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_iam_policy_args.dart';
import 'get_region_backend_service_iam_policy_result.dart';

Future<GetRegionBackendServiceIamPolicyResult> getRegionBackendServiceIamPolicy(
  GetRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendServiceIamPolicy:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult.fromMap(result);
}

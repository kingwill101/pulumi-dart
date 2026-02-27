import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_iam_policy_args.dart';
import 'get_backend_service_iam_policy_result.dart';

Future<GetBackendServiceIamPolicyResult> getBackendServiceIamPolicy(
  GetBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendServiceIamPolicy:getBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyResult.fromMap(result);
}

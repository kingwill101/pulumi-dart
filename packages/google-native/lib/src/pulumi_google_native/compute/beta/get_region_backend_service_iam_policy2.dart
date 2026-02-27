import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_backend_service_iam_policy_args2.dart';
import 'get_region_backend_service_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionBackendServiceIamPolicyResult2>
    getRegionBackendServiceIamPolicy2(
  GetRegionBackendServiceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult2.fromMap(result);
}

import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_backend_service_iam_policy_args3.dart';
import 'get_region_backend_service_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionBackendServiceIamPolicyResult3>
    getRegionBackendServiceIamPolicy3(
  GetRegionBackendServiceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult3.fromMap(result);
}

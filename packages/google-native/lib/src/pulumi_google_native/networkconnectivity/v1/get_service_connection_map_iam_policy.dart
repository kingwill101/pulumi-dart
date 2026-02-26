import 'package:pulumi/pulumi.dart';
import 'get_service_connection_map_iam_policy_args.dart';
import 'get_service_connection_map_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceConnectionMapIamPolicyResult> getServiceConnectionMapIamPolicy(
  GetServiceConnectionMapIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMapIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionMapIamPolicyResult.fromMap(result);
}

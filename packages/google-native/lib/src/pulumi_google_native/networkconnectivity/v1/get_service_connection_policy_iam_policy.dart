import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_connection_policy_iam_policy_args.dart';
import 'get_service_connection_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceConnectionPolicyIamPolicyResult>
    getServiceConnectionPolicyIamPolicy(
  GetServiceConnectionPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionPolicyIamPolicyResult.fromMap(result);
}

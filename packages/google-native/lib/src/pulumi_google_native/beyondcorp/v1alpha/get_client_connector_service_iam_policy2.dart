import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_connector_service_iam_policy_args2.dart';
import 'get_client_connector_service_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetClientConnectorServiceIamPolicyResult2>
    getClientConnectorServiceIamPolicy2(
  GetClientConnectorServiceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getClientConnectorServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientConnectorServiceIamPolicyResult2.fromMap(result);
}

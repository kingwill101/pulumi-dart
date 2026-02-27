import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_connector_iam_policy_args2.dart';
import 'get_app_connector_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppConnectorIamPolicyResult2> getAppConnectorIamPolicy2(
  GetAppConnectorIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectorIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorIamPolicyResult2.fromMap(result);
}

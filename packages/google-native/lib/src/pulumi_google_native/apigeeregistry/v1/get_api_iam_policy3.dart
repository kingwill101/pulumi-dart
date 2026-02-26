import 'package:pulumi/pulumi.dart';
import 'get_api_iam_policy_args3.dart';
import 'get_api_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiIamPolicyResult3> getApiIamPolicy3(
  GetApiIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult3.fromMap(result);
}

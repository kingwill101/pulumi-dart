import 'package:pulumi/pulumi.dart' hide Config;
import 'get_api_iam_policy_args2.dart';
import 'get_api_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiIamPolicyResult2> getApiIamPolicy2(
  GetApiIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult2.fromMap(result);
}

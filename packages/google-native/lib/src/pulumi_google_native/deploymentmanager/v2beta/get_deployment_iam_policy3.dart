import 'package:pulumi/pulumi.dart';
import 'get_deployment_iam_policy_args3.dart';
import 'get_deployment_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDeploymentIamPolicyResult3> getDeploymentIamPolicy3(
  GetDeploymentIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeploymentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyResult3.fromMap(result);
}

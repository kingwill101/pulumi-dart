import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ekm_config_iam_policy_args.dart';
import 'get_ekm_config_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEkmConfigIamPolicyResult> getEkmConfigIamPolicy(
  GetEkmConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEkmConfigIamPolicyResult.fromMap(result);
}

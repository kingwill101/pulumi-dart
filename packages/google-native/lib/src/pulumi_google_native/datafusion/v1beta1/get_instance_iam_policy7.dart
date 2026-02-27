import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_iam_policy_args7.dart';
import 'get_instance_iam_policy_result7.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyResult7> getInstanceIamPolicy7(
  GetInstanceIamPolicyArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult7.fromMap(result);
}

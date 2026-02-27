import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_datafusion_v1beta1_args.dart';
import 'get_instance_iam_policy_datafusion_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyDatafusionV1beta1Result>
    getInstanceIamPolicyDatafusionV1beta1(
  GetInstanceIamPolicyDatafusionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyDatafusionV1beta1Result.fromMap(result);
}

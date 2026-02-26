import 'package:pulumi/pulumi.dart';
import 'get_dataset_iam_policy_args2.dart';
import 'get_dataset_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetIamPolicyResult2> getDatasetIamPolicy2(
  GetDatasetIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult2.fromMap(result);
}

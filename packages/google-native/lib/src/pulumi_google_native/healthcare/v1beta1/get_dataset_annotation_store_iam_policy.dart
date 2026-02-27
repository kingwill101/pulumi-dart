import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_annotation_store_iam_policy_args.dart';
import 'get_dataset_annotation_store_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetAnnotationStoreIamPolicyResult>
    getDatasetAnnotationStoreIamPolicy(
  GetDatasetAnnotationStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetAnnotationStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetAnnotationStoreIamPolicyResult.fromMap(result);
}

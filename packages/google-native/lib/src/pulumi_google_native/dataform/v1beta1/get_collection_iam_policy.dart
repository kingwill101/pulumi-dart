import 'package:pulumi/pulumi.dart';
import 'get_collection_iam_policy_args.dart';
import 'get_collection_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetCollectionIamPolicyResult> getCollectionIamPolicy(
  GetCollectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getCollectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCollectionIamPolicyResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lake_content_iam_policy_args.dart';
import 'get_lake_content_iam_policy_result.dart';

/// Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.
Future<GetLakeContentIamPolicyResult> getLakeContentIamPolicy(
  GetLakeContentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeContentIamPolicyResult.fromMap(result);
}

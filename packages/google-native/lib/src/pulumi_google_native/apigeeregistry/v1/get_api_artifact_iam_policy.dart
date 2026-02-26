import 'package:pulumi/pulumi.dart';
import 'get_api_artifact_iam_policy_args.dart';
import 'get_api_artifact_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiArtifactIamPolicyResult> getApiArtifactIamPolicy(
  GetApiArtifactIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiArtifactIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiArtifactIamPolicyResult.fromMap(result);
}

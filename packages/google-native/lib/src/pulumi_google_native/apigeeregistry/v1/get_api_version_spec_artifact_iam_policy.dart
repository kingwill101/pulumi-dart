import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_version_spec_artifact_iam_policy_args.dart';
import 'get_api_version_spec_artifact_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiVersionSpecArtifactIamPolicyResult>
    getApiVersionSpecArtifactIamPolicy(
  GetApiVersionSpecArtifactIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionSpecArtifactIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionSpecArtifactIamPolicyResult.fromMap(result);
}

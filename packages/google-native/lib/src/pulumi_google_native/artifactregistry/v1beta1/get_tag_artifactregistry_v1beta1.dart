import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_artifactregistry_v1beta1_args.dart';
import 'get_tag_artifactregistry_v1beta1_result.dart';

/// Gets a tag.
Future<GetTagArtifactregistryV1beta1Result> getTagArtifactregistryV1beta1(
  GetTagArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta1Result.fromMap(result);
}

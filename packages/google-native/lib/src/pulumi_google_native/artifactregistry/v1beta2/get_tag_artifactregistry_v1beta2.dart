import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_artifactregistry_v1beta2_args.dart';
import 'get_tag_artifactregistry_v1beta2_result.dart';

/// Gets a tag.
Future<GetTagArtifactregistryV1beta2Result> getTagArtifactregistryV1beta2(
  GetTagArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta2Result.fromMap(result);
}

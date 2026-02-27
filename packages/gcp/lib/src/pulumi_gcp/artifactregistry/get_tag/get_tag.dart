import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_args.dart';
import 'get_tag_result.dart';

/// This data source fetches information of a tag from a provided Artifact Registry repository.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getTag:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

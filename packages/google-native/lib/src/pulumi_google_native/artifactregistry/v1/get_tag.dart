import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_args.dart';
import 'get_tag_result.dart';

/// Gets a tag.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

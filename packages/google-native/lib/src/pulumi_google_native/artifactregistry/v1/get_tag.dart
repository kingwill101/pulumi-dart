import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tag_args.dart';
import 'get_tag_result.dart';

/// Gets a tag.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getTag',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

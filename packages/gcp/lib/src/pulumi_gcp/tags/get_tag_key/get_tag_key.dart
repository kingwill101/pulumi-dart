import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_key_args.dart';
import 'get_tag_key_result.dart';

/// Get a tag key by org or project `parent` and `short_name`.
Future<GetTagKeyResult> getTagKey(
  GetTagKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKey:getTagKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagKeyResult.fromMap(result);
}

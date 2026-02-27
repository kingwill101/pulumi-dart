import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_keys_args.dart';
import 'get_tag_keys_result.dart';

/// Get tag keys by org or project `parent`.
Future<GetTagKeysResult> getTagKeys(
  GetTagKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKeys:getTagKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagKeysResult.fromMap(result);
}

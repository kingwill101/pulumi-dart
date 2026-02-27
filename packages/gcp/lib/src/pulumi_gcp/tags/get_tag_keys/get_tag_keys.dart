import 'package:pulumi/pulumi.dart';
import 'get_tag_keys_args.dart';
import 'get_tag_keys_result.dart';

/// Get tag keys by org or project `parent`.
Future<GetTagKeysResult> getTagKeys(
  GetTagKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKeys:getTagKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeysResult.fromMap(result);
}

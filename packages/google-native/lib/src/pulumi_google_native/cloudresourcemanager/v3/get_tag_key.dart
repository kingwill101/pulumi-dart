import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_key_args.dart';
import 'get_tag_key_result.dart';

/// Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key does not exist or the user does not have permission to view it.
Future<GetTagKeyResult> getTagKey(
  GetTagKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagKeyResult.fromMap(result);
}

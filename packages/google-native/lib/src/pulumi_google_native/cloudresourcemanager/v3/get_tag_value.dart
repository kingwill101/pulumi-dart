import 'package:pulumi/pulumi.dart';
import 'get_tag_value_args.dart';
import 'get_tag_value_result.dart';

/// Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value does not exist or the user does not have permission to view it.
Future<GetTagValueResult> getTagValue(
  GetTagValueArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagValue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValueResult.fromMap(result);
}

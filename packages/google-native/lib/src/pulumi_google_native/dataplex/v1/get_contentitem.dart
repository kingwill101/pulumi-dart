import 'package:pulumi/pulumi.dart' hide Config;
import 'get_contentitem_args.dart';
import 'get_contentitem_result.dart';

/// Get a content resource.
Future<GetContentitemResult> getContentitem(
  GetContentitemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContentitem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContentitemResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart' hide Config;
import 'get_content_args.dart';
import 'get_content_result.dart';

/// Get a content resource.
Future<GetContentResult> getContent(
  GetContentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContentResult.fromMap(result);
}

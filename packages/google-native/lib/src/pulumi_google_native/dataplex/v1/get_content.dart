import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_content_args.dart';
import 'get_content_result.dart';

/// Get a content resource.
Future<GetContentResult> getContent(
  GetContentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentResult.fromMap(result);
}

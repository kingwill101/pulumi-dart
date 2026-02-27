import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contentitem_args.dart';
import 'get_contentitem_result.dart';

/// Get a content resource.
Future<GetContentitemResult> getContentitem(
  GetContentitemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContentitem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentitemResult.fromMap(result);
}

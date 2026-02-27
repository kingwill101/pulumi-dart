import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_args.dart';
import 'get_service_attachment_result.dart';

/// Returns the specified ServiceAttachment resource in the given scope.
Future<GetServiceAttachmentResult> getServiceAttachment(
  GetServiceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentResult.fromMap(result);
}

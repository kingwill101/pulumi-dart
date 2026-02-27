import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_attachment_args.dart';
import 'get_interconnect_attachment_result.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentResult> getInterconnectAttachment(
  GetInterconnectAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentResult.fromMap(result);
}

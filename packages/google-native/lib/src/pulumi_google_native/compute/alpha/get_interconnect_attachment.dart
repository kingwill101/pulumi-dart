import 'package:pulumi/pulumi.dart' hide Config;
import 'get_interconnect_attachment_args.dart';
import 'get_interconnect_attachment_result.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentResult> getInterconnectAttachment(
  GetInterconnectAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentResult.fromMap(result);
}

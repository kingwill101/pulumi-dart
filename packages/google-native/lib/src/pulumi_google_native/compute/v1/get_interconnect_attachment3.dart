import 'package:pulumi/pulumi.dart' hide Config;
import 'get_interconnect_attachment_args3.dart';
import 'get_interconnect_attachment_result3.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentResult3> getInterconnectAttachment3(
  GetInterconnectAttachmentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnectAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentResult3.fromMap(result);
}

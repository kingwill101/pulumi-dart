import 'package:pulumi/pulumi.dart';
import 'get_interconnect_attachment_args2.dart';
import 'get_interconnect_attachment_result2.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentResult2> getInterconnectAttachment2(
  GetInterconnectAttachmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnectAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentResult2.fromMap(result);
}

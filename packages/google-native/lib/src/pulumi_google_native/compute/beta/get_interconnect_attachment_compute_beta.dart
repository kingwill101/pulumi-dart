import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_attachment_compute_beta_args.dart';
import 'get_interconnect_attachment_compute_beta_result.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentComputeBetaResult>
    getInterconnectAttachmentComputeBeta(
  GetInterconnectAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentComputeBetaResult.fromMap(result);
}

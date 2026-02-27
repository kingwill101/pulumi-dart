import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_attachment_compute_v1_args.dart';
import 'get_interconnect_attachment_compute_v1_result.dart';

/// Returns the specified interconnect attachment.
Future<GetInterconnectAttachmentComputeV1Result>
    getInterconnectAttachmentComputeV1(
  GetInterconnectAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentComputeV1Result.fromMap(result);
}

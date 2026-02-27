import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_packet_mirroring_compute_beta_args.dart';
import 'get_packet_mirroring_compute_beta_result.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringComputeBetaResult> getPacketMirroringComputeBeta(
  GetPacketMirroringComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringComputeBetaResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_packet_mirroring_compute_v1_args.dart';
import 'get_packet_mirroring_compute_v1_result.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringComputeV1Result> getPacketMirroringComputeV1(
  GetPacketMirroringComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringComputeV1Result.fromMap(result);
}

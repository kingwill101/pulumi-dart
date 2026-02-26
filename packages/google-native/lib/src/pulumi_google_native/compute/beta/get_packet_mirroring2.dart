import 'package:pulumi/pulumi.dart';
import 'get_packet_mirroring_args2.dart';
import 'get_packet_mirroring_result2.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringResult2> getPacketMirroring2(
  GetPacketMirroringArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPacketMirroring',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringResult2.fromMap(result);
}

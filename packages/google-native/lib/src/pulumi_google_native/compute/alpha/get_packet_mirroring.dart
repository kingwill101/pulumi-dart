import 'package:pulumi/pulumi.dart' hide Config;
import 'get_packet_mirroring_args.dart';
import 'get_packet_mirroring_result.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringResult> getPacketMirroring(
  GetPacketMirroringArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPacketMirroring',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringResult.fromMap(result);
}

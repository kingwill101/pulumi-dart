import 'package:pulumi/pulumi.dart';
import 'get_packet_mirroring_args3.dart';
import 'get_packet_mirroring_result3.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringResult3> getPacketMirroring3(
  GetPacketMirroringArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPacketMirroring',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringResult3.fromMap(result);
}

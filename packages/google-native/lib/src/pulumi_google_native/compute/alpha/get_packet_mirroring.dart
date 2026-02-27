import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_packet_mirroring_args.dart';
import 'get_packet_mirroring_result.dart';

/// Returns the specified PacketMirroring resource.
Future<GetPacketMirroringResult> getPacketMirroring(
  GetPacketMirroringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringResult.fromMap(result);
}

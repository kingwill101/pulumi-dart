import 'package:pulumi/pulumi.dart';
import 'get_connect_peer_args.dart';
import 'get_connect_peer_result.dart';

/// Get information on an EC2 Transit Gateway Connect Peer.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetConnectPeerResult> getConnectPeer(
  GetConnectPeerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnectPeer:getConnectPeer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectPeerResult.fromMap(result);
}

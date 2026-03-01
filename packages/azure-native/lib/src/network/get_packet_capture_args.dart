// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_packet_capture_args_doc}
/// Arguments for getPacketCapture.
/// {@endtemplate}
/// {@macro pulumi_network_get_packet_capture_args_doc}
class GetPacketCaptureArgs {
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the packet capture session.
  final pulumi.Input<String> packetCaptureName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPacketCaptureArgs].
  /// [networkWatcherName] The name of the network watcher.
  /// [packetCaptureName] The name of the packet capture session.
  /// [resourceGroupName] The name of the resource group.
  GetPacketCaptureArgs({
    required String networkWatcherName,
    required String packetCaptureName,
    required String resourceGroupName,
  }) :
      networkWatcherName = pulumi.Input.asInput<String>(networkWatcherName),
      packetCaptureName = pulumi.Input.asInput<String>(packetCaptureName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherName': networkWatcherName,
      'packetCaptureName': packetCaptureName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketCaptureArgs(
      networkWatcherName: map['networkWatcherName'] as String,
      packetCaptureName: map['packetCaptureName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


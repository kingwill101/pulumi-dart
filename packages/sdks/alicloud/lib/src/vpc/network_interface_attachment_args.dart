// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_network_interface_attachment_network_interface_attachment_args_doc}
/// The set of arguments for NetworkInterfaceAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_interface_attachment_network_interface_attachment_args_doc}
class NetworkInterfaceAttachmentArgs {
  /// The instance ID to attach.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<int>? networkCardIndex;
  /// The ENI ID to attach.
  final pulumi.Input<String> networkInterfaceId;
  final pulumi.Input<String>? trunkNetworkInstanceId;
  final pulumi.Input<bool>? waitForNetworkConfigurationReady;

  /// Creates a new [NetworkInterfaceAttachmentArgs].
  /// [instanceId] The instance ID to attach.
  /// [networkCardIndex] Optional.
  /// [networkInterfaceId] The ENI ID to attach.
  /// [trunkNetworkInstanceId] Optional.
  /// [waitForNetworkConfigurationReady] Optional.
  NetworkInterfaceAttachmentArgs({
    required this.instanceId,
    this.networkCardIndex,
    required this.networkInterfaceId,
    this.trunkNetworkInstanceId,
    this.waitForNetworkConfigurationReady,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': networkInterfaceId,
      'trunkNetworkInstanceId': ?trunkNetworkInstanceId,
      'waitForNetworkConfigurationReady': ?waitForNetworkConfigurationReady,
    };
  }

  factory NetworkInterfaceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      trunkNetworkInstanceId: (() { final guardedValue = map['trunkNetworkInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitForNetworkConfigurationReady: (() { final guardedValue = map['waitForNetworkConfigurationReady']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


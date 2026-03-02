// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_network_interface_attachment_ecs_network_interface_attachment_args_doc}
/// The set of arguments for EcsNetworkInterfaceAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_network_interface_attachment_ecs_network_interface_attachment_args_doc}
class EcsNetworkInterfaceAttachmentArgs {
  /// The ID of the ECS instance.
  final pulumi.Input<String> instanceId;
  /// The index of the network card.
  final pulumi.Input<int>? networkCardIndex;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The ID of the trunk network instance.
  final pulumi.Input<String>? trunkNetworkInstanceId;
  /// The wait for network configuration ready.
  final pulumi.Input<bool>? waitForNetworkConfigurationReady;

  /// Creates a new [EcsNetworkInterfaceAttachmentArgs].
  /// [instanceId] The ID of the ECS instance.
  /// [networkCardIndex] The index of the network card.
  /// [networkInterfaceId] The ID of the network interface.
  /// [trunkNetworkInstanceId] The ID of the trunk network instance.
  /// [waitForNetworkConfigurationReady] The wait for network configuration ready.
  EcsNetworkInterfaceAttachmentArgs({
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

  factory EcsNetworkInterfaceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfaceAttachmentArgs(
      instanceId: (map['instanceId'] as String).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex']! as int).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : (map['trunkNetworkInstanceId']! as String).input(),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : (map['waitForNetworkConfigurationReady']! as bool).input(),
    );
  }
}


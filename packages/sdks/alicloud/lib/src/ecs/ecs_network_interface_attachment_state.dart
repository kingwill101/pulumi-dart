// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsNetworkInterfaceAttachment resources.
class EcsNetworkInterfaceAttachmentState {
  /// The ID of the ECS instance.
  final pulumi.Input<String>? instanceId;
  /// The index of the network card.
  final pulumi.Input<int>? networkCardIndex;
  /// The ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// The ID of the trunk network instance.
  final pulumi.Input<String>? trunkNetworkInstanceId;
  /// The wait for network configuration ready.
  final pulumi.Input<bool>? waitForNetworkConfigurationReady;

  /// Creates a new [EcsNetworkInterfaceAttachmentState].
  /// [instanceId] The ID of the ECS instance.
  /// [networkCardIndex] The index of the network card.
  /// [networkInterfaceId] The ID of the network interface.
  /// [trunkNetworkInstanceId] The ID of the trunk network instance.
  /// [waitForNetworkConfigurationReady] The wait for network configuration ready.
  EcsNetworkInterfaceAttachmentState({
    this.instanceId,
    this.networkCardIndex,
    this.networkInterfaceId,
    this.trunkNetworkInstanceId,
    this.waitForNetworkConfigurationReady,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': ?networkInterfaceId,
      'trunkNetworkInstanceId': ?trunkNetworkInstanceId,
      'waitForNetworkConfigurationReady': ?waitForNetworkConfigurationReady,
    };
  }

  factory EcsNetworkInterfaceAttachmentState.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfaceAttachmentState(
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex']! as int).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : (map['trunkNetworkInstanceId']! as String).input(),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : (map['waitForNetworkConfigurationReady']! as bool).input(),
    );
  }
}


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
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? networkCardIndex,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? trunkNetworkInstanceId,
    pulumi.Output<bool>? waitForNetworkConfigurationReady,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      networkCardIndex = pulumi.Input.asOptionalInput<int>(networkCardIndex),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      trunkNetworkInstanceId = pulumi.Input.asOptionalInput<String>(trunkNetworkInstanceId),
      waitForNetworkConfigurationReady = pulumi.Input.asOptionalInput<bool>(waitForNetworkConfigurationReady);

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
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      networkCardIndex: map['networkCardIndex'] == null ? null : pulumi.Output.create<int>(map['networkCardIndex'] as int),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : pulumi.Output.create<String>(map['trunkNetworkInstanceId'] as String),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : pulumi.Output.create<bool>(map['waitForNetworkConfigurationReady'] as bool),
    );
  }
}


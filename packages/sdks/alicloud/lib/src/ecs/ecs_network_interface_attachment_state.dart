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
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkCardIndex: (() {
        final guardedValue = map['networkCardIndex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      networkInterfaceId: (() {
        final guardedValue = map['networkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trunkNetworkInstanceId: (() {
        final guardedValue = map['trunkNetworkInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitForNetworkConfigurationReady: (() {
        final guardedValue = map['waitForNetworkConfigurationReady'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

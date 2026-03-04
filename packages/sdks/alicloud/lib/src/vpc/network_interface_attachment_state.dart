// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceAttachment resources.
class NetworkInterfaceAttachmentState {
  /// The instance ID to attach.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<int>? networkCardIndex;

  /// The ENI ID to attach.
  final pulumi.Input<String>? networkInterfaceId;
  final pulumi.Input<String>? trunkNetworkInstanceId;
  final pulumi.Input<bool>? waitForNetworkConfigurationReady;

  /// Creates a new [NetworkInterfaceAttachmentState].
  /// [instanceId] The instance ID to attach.
  /// [networkCardIndex] Optional.
  /// [networkInterfaceId] The ENI ID to attach.
  /// [trunkNetworkInstanceId] Optional.
  /// [waitForNetworkConfigurationReady] Optional.
  NetworkInterfaceAttachmentState({
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

  factory NetworkInterfaceAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentState(
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

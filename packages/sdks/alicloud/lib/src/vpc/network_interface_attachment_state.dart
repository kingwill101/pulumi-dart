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
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex']! as int).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : (map['trunkNetworkInstanceId']! as String).input(),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : (map['waitForNetworkConfigurationReady']! as bool).input(),
    );
  }
}


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

  factory NetworkInterfaceAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      networkCardIndex: map['networkCardIndex'] == null ? null : pulumi.Output.create<int>(map['networkCardIndex'] as int),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : pulumi.Output.create<String>(map['trunkNetworkInstanceId'] as String),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : pulumi.Output.create<bool>(map['waitForNetworkConfigurationReady'] as bool),
    );
  }
}


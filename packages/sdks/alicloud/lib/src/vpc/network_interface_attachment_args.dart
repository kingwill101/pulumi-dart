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
    required pulumi.Output<String> instanceId,
    pulumi.Output<int>? networkCardIndex,
    required pulumi.Output<String> networkInterfaceId,
    pulumi.Output<String>? trunkNetworkInstanceId,
    pulumi.Output<bool>? waitForNetworkConfigurationReady,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      networkCardIndex = pulumi.Input.asOptionalInput<int>(networkCardIndex),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
      trunkNetworkInstanceId = pulumi.Input.asOptionalInput<String>(trunkNetworkInstanceId),
      waitForNetworkConfigurationReady = pulumi.Input.asOptionalInput<bool>(waitForNetworkConfigurationReady);

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
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      networkCardIndex: map['networkCardIndex'] == null ? null : pulumi.Output.create<int>(map['networkCardIndex'] as int),
      networkInterfaceId: pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      trunkNetworkInstanceId: map['trunkNetworkInstanceId'] == null ? null : pulumi.Output.create<String>(map['trunkNetworkInstanceId'] as String),
      waitForNetworkConfigurationReady: map['waitForNetworkConfigurationReady'] == null ? null : pulumi.Output.create<bool>(map['waitForNetworkConfigurationReady'] as bool),
    );
  }
}


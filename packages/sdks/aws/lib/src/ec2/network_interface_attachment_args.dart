// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_network_interface_attachment_network_interface_attachment_args_doc}
/// The set of arguments for NetworkInterfaceAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_interface_attachment_network_interface_attachment_args_doc}
class NetworkInterfaceAttachmentArgs {
  /// Network interface index (int).
  final pulumi.Input<int> deviceIndex;
  /// Instance ID to attach.
  final pulumi.Input<String> instanceId;
  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  final pulumi.Input<int>? networkCardIndex;
  /// ENI ID to attach.
  final pulumi.Input<String> networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkInterfaceAttachmentArgs].
  /// [deviceIndex] Network interface index (int).
  /// [instanceId] Instance ID to attach.
  /// [networkCardIndex] Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  /// [networkInterfaceId] ENI ID to attach.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const NetworkInterfaceAttachmentArgs({
    required this.deviceIndex,
    required this.instanceId,
    this.networkCardIndex,
    required this.networkInterfaceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceIndex': deviceIndex,
      'instanceId': instanceId,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': networkInterfaceId,
      'region': ?region,
    };
  }

  factory NetworkInterfaceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentArgs(
      deviceIndex: pulumi.Input.fromValue(map['deviceIndex'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

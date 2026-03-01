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
  NetworkInterfaceAttachmentArgs({
    required pulumi.Output<int> deviceIndex,
    required pulumi.Output<String> instanceId,
    pulumi.Output<int>? networkCardIndex,
    required pulumi.Output<String> networkInterfaceId,
    pulumi.Output<String>? region,
  }) :
      deviceIndex = pulumi.Input.asInput<int>(deviceIndex),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      networkCardIndex = pulumi.Input.asOptionalInput<int>(networkCardIndex),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      deviceIndex: pulumi.Output.create<int>(map['deviceIndex'] as int),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      networkCardIndex: map['networkCardIndex'] == null ? null : pulumi.Output.create<int>(map['networkCardIndex'] as int),
      networkInterfaceId: pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


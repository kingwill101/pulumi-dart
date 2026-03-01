// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceAttachment resources.
class NetworkInterfaceAttachmentState {
  /// The ENI Attachment ID.
  final pulumi.Input<String>? attachmentId;
  /// Network interface index (int).
  final pulumi.Input<int>? deviceIndex;
  /// Instance ID to attach.
  final pulumi.Input<String>? instanceId;
  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  final pulumi.Input<int>? networkCardIndex;
  /// ENI ID to attach.
  final pulumi.Input<String>? networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the Network Interface Attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [NetworkInterfaceAttachmentState].
  /// [attachmentId] The ENI Attachment ID.
  /// [deviceIndex] Network interface index (int).
  /// [instanceId] Instance ID to attach.
  /// [networkCardIndex] Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  /// [networkInterfaceId] ENI ID to attach.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the Network Interface Attachment.
  NetworkInterfaceAttachmentState({
    pulumi.Output<String>? attachmentId,
    pulumi.Output<int>? deviceIndex,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? networkCardIndex,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      attachmentId = pulumi.Input.asOptionalInput<String>(attachmentId),
      deviceIndex = pulumi.Input.asOptionalInput<int>(deviceIndex),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      networkCardIndex = pulumi.Input.asOptionalInput<int>(networkCardIndex),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'deviceIndex': ?deviceIndex,
      'instanceId': ?instanceId,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': ?networkInterfaceId,
      'region': ?region,
      'status': ?status,
    };
  }

  factory NetworkInterfaceAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentState(
      attachmentId: map['attachmentId'] == null ? null : pulumi.Output.create<String>(map['attachmentId'] as String),
      deviceIndex: map['deviceIndex'] == null ? null : pulumi.Output.create<int>(map['deviceIndex'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      networkCardIndex: map['networkCardIndex'] == null ? null : pulumi.Output.create<int>(map['networkCardIndex'] as int),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


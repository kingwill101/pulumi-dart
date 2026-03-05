// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceAttachment {
  final pulumi.Input<String>? attachmentId;
  /// Integer to define the devices index.
  final pulumi.Input<int> deviceIndex;
  /// ID of the instance to attach to.
  final pulumi.Input<String> instance;
  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  final pulumi.Input<int>? networkCardIndex;

  /// Creates a new [NetworkInterfaceAttachment].
  /// [attachmentId] Optional.
  /// [deviceIndex] Integer to define the devices index.
  /// [instance] ID of the instance to attach to.
  /// [networkCardIndex] Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  NetworkInterfaceAttachment({
    this.attachmentId,
    required this.deviceIndex,
    required this.instance,
    this.networkCardIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'deviceIndex': deviceIndex,
      'instance': instance,
      'networkCardIndex': ?networkCardIndex,
    };
  }

  factory NetworkInterfaceAttachment.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachment(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceIndex: pulumi.Input.fromValue(map['deviceIndex'] as int),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


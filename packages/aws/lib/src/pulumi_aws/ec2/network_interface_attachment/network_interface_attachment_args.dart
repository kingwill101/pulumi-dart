// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkInterfaceAttachment.
class NetworkInterfaceAttachmentArgs {
  /// Network interface index (int).
  final Input<int> deviceIndex;

  /// Instance ID to attach.
  final Input<String> instanceId;

  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  final Input<int>? networkCardIndex;

  /// ENI ID to attach.
  final Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  NetworkInterfaceAttachmentArgs({
    required this.deviceIndex,
    required this.instanceId,
    this.networkCardIndex,
    required this.networkInterfaceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceIndex'] = deviceIndex;
    map['instanceId'] = instanceId;
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory NetworkInterfaceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceAttachmentArgs(
      deviceIndex: Input.asInput<int>(map['deviceIndex']),
      instanceId: Input.asInput<String>(map['instanceId']),
      networkCardIndex: Input.asOptionalInput<int>(map['networkCardIndex']),
      networkInterfaceId: Input.asInput<String>(map['networkInterfaceId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

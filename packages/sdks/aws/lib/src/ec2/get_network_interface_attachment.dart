// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInterfaceAttachment {
  /// ID of the network interface attachment.
  final pulumi.Input<String> attachmentId;
  /// Device index of the network interface attachment on the instance.
  final pulumi.Input<int> deviceIndex;
  /// ID of the instance.
  final pulumi.Input<String> instanceId;
  /// AWS account ID of the owner of the instance.
  final pulumi.Input<String> instanceOwnerId;
  /// Index of the network card.
  final pulumi.Input<int> networkCardIndex;

  /// Creates a new [GetNetworkInterfaceAttachment].
  /// [attachmentId] ID of the network interface attachment.
  /// [deviceIndex] Device index of the network interface attachment on the instance.
  /// [instanceId] ID of the instance.
  /// [instanceOwnerId] AWS account ID of the owner of the instance.
  /// [networkCardIndex] Index of the network card.
  GetNetworkInterfaceAttachment({
    required this.attachmentId,
    required this.deviceIndex,
    required this.instanceId,
    required this.instanceOwnerId,
    required this.networkCardIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'deviceIndex': deviceIndex,
      'instanceId': instanceId,
      'instanceOwnerId': instanceOwnerId,
      'networkCardIndex': networkCardIndex,
    };
  }

  factory GetNetworkInterfaceAttachment.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceAttachment(
      attachmentId: (map['attachmentId'] as String).input(),
      deviceIndex: (map['deviceIndex'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceOwnerId: (map['instanceOwnerId'] as String).input(),
      networkCardIndex: (map['networkCardIndex'] as int).input(),
    );
  }
}


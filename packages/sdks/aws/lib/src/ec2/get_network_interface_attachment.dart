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
  const GetNetworkInterfaceAttachment({
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
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      deviceIndex: pulumi.Input.fromValue((map['deviceIndex'] as num).toInt()),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceOwnerId: pulumi.Input.fromValue(map['instanceOwnerId'] as String),
      networkCardIndex: pulumi.Input.fromValue((map['networkCardIndex'] as num).toInt()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInterfaceAttachment {
  /// ID of the network interface attachment.
  final String attachmentId;

  /// Device index of the network interface attachment on the instance.
  final int deviceIndex;

  /// ID of the instance.
  final String instanceId;

  /// AWS account ID of the owner of the instance.
  final String instanceOwnerId;

  /// Index of the network card.
  final int networkCardIndex;

  GetNetworkInterfaceAttachment({
    required this.attachmentId,
    required this.deviceIndex,
    required this.instanceId,
    required this.instanceOwnerId,
    required this.networkCardIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['deviceIndex'] = deviceIndex;
    map['instanceId'] = instanceId;
    map['instanceOwnerId'] = instanceOwnerId;
    map['networkCardIndex'] = networkCardIndex;
    return map;
  }

  factory GetNetworkInterfaceAttachment.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceAttachment(
      attachmentId: map['attachmentId'] as String,
      deviceIndex: map['deviceIndex'] as int,
      instanceId: map['instanceId'] as String,
      instanceOwnerId: map['instanceOwnerId'] as String,
      networkCardIndex: map['networkCardIndex'] as int,
    );
  }
}

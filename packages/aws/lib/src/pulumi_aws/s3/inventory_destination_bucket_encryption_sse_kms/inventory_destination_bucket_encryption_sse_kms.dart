// ignore_for_file: unused_element, unnecessary_cast

class InventoryDestinationBucketEncryptionSseKms {
  /// ARN of the KMS customer master key (CMK) used to encrypt the inventory file.
  final String keyId;

  InventoryDestinationBucketEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    return map;
  }

  factory InventoryDestinationBucketEncryptionSseKms.fromMap(
      Map<String, dynamic> map) {
    return InventoryDestinationBucketEncryptionSseKms(
      keyId: map['keyId'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class InventoryDestinationBucketEncryptionSseKms {
  /// ARN of the KMS customer master key (CMK) used to encrypt the inventory file.
  final String keyId;

  /// Creates a new [InventoryDestinationBucketEncryptionSseKms].
  /// [keyId] ARN of the KMS customer master key (CMK) used to encrypt the inventory file.
  InventoryDestinationBucketEncryptionSseKms({required this.keyId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyId': keyId};
  }

  factory InventoryDestinationBucketEncryptionSseKms.fromMap(
    Map<String, dynamic> map,
  ) {
    return InventoryDestinationBucketEncryptionSseKms(
      keyId: map['keyId'] as String,
    );
  }
}

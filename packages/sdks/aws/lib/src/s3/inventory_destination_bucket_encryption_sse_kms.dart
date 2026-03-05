// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InventoryDestinationBucketEncryptionSseKms {
  /// ARN of the KMS customer master key (CMK) used to encrypt the inventory file.
  final pulumi.Input<String> keyId;

  /// Creates a new [InventoryDestinationBucketEncryptionSseKms].
  /// [keyId] ARN of the KMS customer master key (CMK) used to encrypt the inventory file.
  InventoryDestinationBucketEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory InventoryDestinationBucketEncryptionSseKms.fromMap(Map<String, dynamic> map) {
    return InventoryDestinationBucketEncryptionSseKms(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}


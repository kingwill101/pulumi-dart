// ignore_for_file: unused_element, unnecessary_cast

import 'field_level_encryption_profile_encryption_entities_item_field_patterns.dart';

class FieldLevelEncryptionProfileEncryptionEntitiesItem {
  /// Object that contains an attribute `items` that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.
  final FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns
      fieldPatterns;

  /// The provider associated with the public key being used for encryption.
  final String providerId;

  /// The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.
  final String publicKeyId;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntitiesItem].
  /// [fieldPatterns] Object that contains an attribute `items` that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.
  /// [providerId] The provider associated with the public key being used for encryption.
  /// [publicKeyId] The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.
  FieldLevelEncryptionProfileEncryptionEntitiesItem({
    required this.fieldPatterns,
    required this.providerId,
    required this.publicKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldPatterns'] = fieldPatterns.toMap();
    map['providerId'] = providerId;
    map['publicKeyId'] = publicKeyId;
    return map;
  }

  factory FieldLevelEncryptionProfileEncryptionEntitiesItem.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntitiesItem(
      fieldPatterns:
          FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns
              .fromMap((map['fieldPatterns'] as Map).cast<String, dynamic>()),
      providerId: map['providerId'] as String,
      publicKeyId: map['publicKeyId'] as String,
    );
  }
}

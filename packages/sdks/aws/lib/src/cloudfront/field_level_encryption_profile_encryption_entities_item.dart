// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_encryption_entities_item_field_patterns.dart';

class FieldLevelEncryptionProfileEncryptionEntitiesItem {
  /// Object that contains an attribute `items` that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.
  final pulumi.Input<FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns> fieldPatterns;
  /// The provider associated with the public key being used for encryption.
  final pulumi.Input<String> providerId;
  /// The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.
  final pulumi.Input<String> publicKeyId;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntitiesItem].
  /// [fieldPatterns] Object that contains an attribute `items` that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.
  /// [providerId] The provider associated with the public key being used for encryption.
  /// [publicKeyId] The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.
  const FieldLevelEncryptionProfileEncryptionEntitiesItem({
    required this.fieldPatterns,
    required this.providerId,
    required this.publicKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPatterns': pulumi.Input.mapInputValue<FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns, Map<String, dynamic>>(fieldPatterns, (value) => value.toMap()),
      'providerId': providerId,
      'publicKeyId': publicKeyId,
    };
  }

  factory FieldLevelEncryptionProfileEncryptionEntitiesItem.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntitiesItem(
      fieldPatterns: pulumi.Input.fromValue(FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns.fromMap((map['fieldPatterns']! as Map).cast<String, dynamic>())),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      publicKeyId: pulumi.Input.fromValue(map['publicKeyId'] as String),
    );
  }
}


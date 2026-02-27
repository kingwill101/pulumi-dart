// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../field_level_encryption_profile_encryption_entities/field_level_encryption_profile_encryption_entities.dart';

/// The set of arguments for FieldLevelEncryptionProfile.
class FieldLevelEncryptionProfileArgs {
  /// An optional comment about the Field Level Encryption Profile.
  final pulumi.Input<String>? comment;

  /// The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  final pulumi.Input<FieldLevelEncryptionProfileEncryptionEntities>
      encryptionEntities;

  /// The name of the Field Level Encryption Profile.
  final pulumi.Input<String>? name;

  FieldLevelEncryptionProfileArgs({
    this.comment,
    required this.encryptionEntities,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['encryptionEntities'] = pulumi.Input.mapInputValue<
        FieldLevelEncryptionProfileEncryptionEntities,
        Map<String, dynamic>>(encryptionEntities, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FieldLevelEncryptionProfileArgs.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      encryptionEntities:
          pulumi.Input.asInput<FieldLevelEncryptionProfileEncryptionEntities>(
              map['encryptionEntities']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}

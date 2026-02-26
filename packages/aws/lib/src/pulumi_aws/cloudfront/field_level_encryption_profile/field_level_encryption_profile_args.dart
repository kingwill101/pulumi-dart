// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../field_level_encryption_profile_encryption_entities/field_level_encryption_profile_encryption_entities.dart';

/// The set of arguments for FieldLevelEncryptionProfile.
class FieldLevelEncryptionProfileArgs {
  /// An optional comment about the Field Level Encryption Profile.
  final Input<String>? comment;

  /// The encryption entities config block for field-level encryption profiles that contains an attribute <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> which includes the encryption key and field pattern specifications.
  final Input<FieldLevelEncryptionProfileEncryptionEntities> encryptionEntities;

  /// The name of the Field Level Encryption Profile.
  final Input<String>? name;

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
    map['encryptionEntities'] = Input.mapInputValue<
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
      comment: Input.asOptionalInput<String>(map['comment']),
      encryptionEntities:
          Input.asInput<FieldLevelEncryptionProfileEncryptionEntities>(
              map['encryptionEntities']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}

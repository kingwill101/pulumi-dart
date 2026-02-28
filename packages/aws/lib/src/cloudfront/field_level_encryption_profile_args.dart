// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_encryption_entities.dart';

/// {@template pulumi_cloudfront_field_level_encryption_profile_field_level_encryption_profile_args_doc}
/// The set of arguments for FieldLevelEncryptionProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_field_level_encryption_profile_field_level_encryption_profile_args_doc}
class FieldLevelEncryptionProfileArgs {
  /// An optional comment about the Field Level Encryption Profile.
  final pulumi.Input<String>? comment;

  /// The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  final pulumi.Input<FieldLevelEncryptionProfileEncryptionEntities>
      encryptionEntities;

  /// The name of the Field Level Encryption Profile.
  final pulumi.Input<String>? name;

  /// Creates a new [FieldLevelEncryptionProfileArgs].
  /// [comment] An optional comment about the Field Level Encryption Profile.
  /// [encryptionEntities] The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  /// [name] The name of the Field Level Encryption Profile.
  FieldLevelEncryptionProfileArgs({
    String? comment,
    required FieldLevelEncryptionProfileEncryptionEntities encryptionEntities,
    String? name,
  })  : comment = pulumi.Input.asOptionalInput<String>(comment),
        encryptionEntities =
            pulumi.Input.asInput<FieldLevelEncryptionProfileEncryptionEntities>(
                encryptionEntities),
        name = pulumi.Input.asOptionalInput<String>(name);

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
      comment: map['comment'] == null ? null : map['comment'] as String,
      encryptionEntities: FieldLevelEncryptionProfileEncryptionEntities.fromMap(
          (map['encryptionEntities'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

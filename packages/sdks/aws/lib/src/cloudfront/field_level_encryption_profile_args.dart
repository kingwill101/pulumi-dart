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
  final pulumi.Input<FieldLevelEncryptionProfileEncryptionEntities> encryptionEntities;
  /// The name of the Field Level Encryption Profile.
  final pulumi.Input<String>? name;

  /// Creates a new [FieldLevelEncryptionProfileArgs].
  /// [comment] An optional comment about the Field Level Encryption Profile.
  /// [encryptionEntities] The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  /// [name] The name of the Field Level Encryption Profile.
  FieldLevelEncryptionProfileArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<FieldLevelEncryptionProfileEncryptionEntities> encryptionEntities,
    pulumi.Output<String>? name,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      encryptionEntities = pulumi.Input.asInput<FieldLevelEncryptionProfileEncryptionEntities>(encryptionEntities),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'encryptionEntities': pulumi.Input.mapInputValue<FieldLevelEncryptionProfileEncryptionEntities, Map<String, dynamic>>(encryptionEntities, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory FieldLevelEncryptionProfileArgs.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      encryptionEntities: pulumi.Output.create<FieldLevelEncryptionProfileEncryptionEntities>(FieldLevelEncryptionProfileEncryptionEntities.fromMap((map['encryptionEntities'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_encryption_entities.dart';

/// Input properties used for looking up and filtering FieldLevelEncryptionProfile resources.
class FieldLevelEncryptionProfileState {
  /// The Field Level Encryption Profile ARN.
  final pulumi.Input<String>? arn;
  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile.
  final pulumi.Input<String>? callerReference;
  /// An optional comment about the Field Level Encryption Profile.
  final pulumi.Input<String>? comment;
  /// The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  final pulumi.Input<FieldLevelEncryptionProfileEncryptionEntities>? encryptionEntities;
  /// The current version of the Field Level Encryption Profile. For example: `E2QWRUHAPOMQZL`.
  final pulumi.Input<String>? etag;
  /// The name of the Field Level Encryption Profile.
  final pulumi.Input<String>? name;

  /// Creates a new [FieldLevelEncryptionProfileState].
  /// [arn] The Field Level Encryption Profile ARN.
  /// [callerReference] Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile.
  /// [comment] An optional comment about the Field Level Encryption Profile.
  /// [encryptionEntities] The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  /// [etag] The current version of the Field Level Encryption Profile. For example: `E2QWRUHAPOMQZL`.
  /// [name] The name of the Field Level Encryption Profile.
  FieldLevelEncryptionProfileState({
    this.arn,
    this.callerReference,
    this.comment,
    this.encryptionEntities,
    this.etag,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'callerReference': ?callerReference,
      'comment': ?comment,
      'encryptionEntities': ?pulumi.Input.mapOptionalInputValue<FieldLevelEncryptionProfileEncryptionEntities, Map<String, dynamic>>(encryptionEntities, (value) => value.toMap()),
      'etag': ?etag,
      'name': ?name,
    };
  }

  factory FieldLevelEncryptionProfileState.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      callerReference: map['callerReference'] == null ? null : (map['callerReference'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      encryptionEntities: map['encryptionEntities'] == null ? null : (FieldLevelEncryptionProfileEncryptionEntities.fromMap((map['encryptionEntities'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


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
  const FieldLevelEncryptionProfileState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionEntities: (() { final guardedValue = map['encryptionEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldLevelEncryptionProfileEncryptionEntities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


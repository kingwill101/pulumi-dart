// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeysKey {
  /// The Alibaba Cloud Resource Name (ARN) of the key.
  final pulumi.Input<String> arn;

  /// (Available in 1.123.1+) Specifies whether to enable automatic key rotation.
  final pulumi.Input<String> automaticRotation;

  /// Creation date of key.
  final pulumi.Input<String> creationDate;

  /// The owner of the key.
  final pulumi.Input<String> creator;

  /// Deletion date of key.
  final pulumi.Input<String> deleteDate;

  /// Description of the key.
  final pulumi.Input<String> description;

  /// ID of the key.
  final pulumi.Input<String> id;

  /// (Available in 1.123.1+)  ID of the key.
  final pulumi.Input<String> keyId;

  /// (Available in 1.123.1+)  The type of the CMK.
  final pulumi.Input<String> keySpec;

  /// (Available in 1.123.1+)  The usage of CMK.
  final pulumi.Input<String> keyUsage;

  /// (Available in 1.123.1+)  The date and time the last rotation was performed.
  final pulumi.Input<String> lastRotationDate;

  /// (Available in 1.123.1+)  The time and date the key material for the CMK expires.
  final pulumi.Input<String> materialExpireTime;

  /// (Available in 1.123.1+)  The time the next rotation is scheduled for execution.
  final pulumi.Input<String> nextRotationDate;

  /// (Available in 1.123.1+)  The source of the key material for the CMK.
  final pulumi.Input<String> origin;

  /// (Available in 1.123.1+)  The ID of the current primary key version of the symmetric CMK.
  final pulumi.Input<String> primaryKeyVersion;

  /// (Available in 1.123.1+)  The protection level of the CMK.
  final pulumi.Input<String> protectionLevel;

  /// (Available in 1.123.1+)  The period of automatic key rotation.
  final pulumi.Input<String> rotationInterval;

  /// Filter the results by status of the KMS keys. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  final pulumi.Input<String> status;

  /// Creates a new [GetKeysKey].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the key.
  /// [automaticRotation] (Available in 1.123.1+) Specifies whether to enable automatic key rotation.
  /// [creationDate] Creation date of key.
  /// [creator] The owner of the key.
  /// [deleteDate] Deletion date of key.
  /// [description] Description of the key.
  /// [id] ID of the key.
  /// [keyId] (Available in 1.123.1+)  ID of the key.
  /// [keySpec] (Available in 1.123.1+)  The type of the CMK.
  /// [keyUsage] (Available in 1.123.1+)  The usage of CMK.
  /// [lastRotationDate] (Available in 1.123.1+)  The date and time the last rotation was performed.
  /// [materialExpireTime] (Available in 1.123.1+)  The time and date the key material for the CMK expires.
  /// [nextRotationDate] (Available in 1.123.1+)  The time the next rotation is scheduled for execution.
  /// [origin] (Available in 1.123.1+)  The source of the key material for the CMK.
  /// [primaryKeyVersion] (Available in 1.123.1+)  The ID of the current primary key version of the symmetric CMK.
  /// [protectionLevel] (Available in 1.123.1+)  The protection level of the CMK.
  /// [rotationInterval] (Available in 1.123.1+)  The period of automatic key rotation.
  /// [status] Filter the results by status of the KMS keys. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  GetKeysKey({
    required this.arn,
    required this.automaticRotation,
    required this.creationDate,
    required this.creator,
    required this.deleteDate,
    required this.description,
    required this.id,
    required this.keyId,
    required this.keySpec,
    required this.keyUsage,
    required this.lastRotationDate,
    required this.materialExpireTime,
    required this.nextRotationDate,
    required this.origin,
    required this.primaryKeyVersion,
    required this.protectionLevel,
    required this.rotationInterval,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'automaticRotation': automaticRotation,
      'creationDate': creationDate,
      'creator': creator,
      'deleteDate': deleteDate,
      'description': description,
      'id': id,
      'keyId': keyId,
      'keySpec': keySpec,
      'keyUsage': keyUsage,
      'lastRotationDate': lastRotationDate,
      'materialExpireTime': materialExpireTime,
      'nextRotationDate': nextRotationDate,
      'origin': origin,
      'primaryKeyVersion': primaryKeyVersion,
      'protectionLevel': protectionLevel,
      'rotationInterval': rotationInterval,
      'status': status,
    };
  }

  factory GetKeysKey.fromMap(Map<String, dynamic> map) {
    return GetKeysKey(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      automaticRotation: pulumi.Input.fromValue(
        map['automaticRotation'] as String,
      ),
      creationDate: pulumi.Input.fromValue(map['creationDate'] as String),
      creator: pulumi.Input.fromValue(map['creator'] as String),
      deleteDate: pulumi.Input.fromValue(map['deleteDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      keySpec: pulumi.Input.fromValue(map['keySpec'] as String),
      keyUsage: pulumi.Input.fromValue(map['keyUsage'] as String),
      lastRotationDate: pulumi.Input.fromValue(
        map['lastRotationDate'] as String,
      ),
      materialExpireTime: pulumi.Input.fromValue(
        map['materialExpireTime'] as String,
      ),
      nextRotationDate: pulumi.Input.fromValue(
        map['nextRotationDate'] as String,
      ),
      origin: pulumi.Input.fromValue(map['origin'] as String),
      primaryKeyVersion: pulumi.Input.fromValue(
        map['primaryKeyVersion'] as String,
      ),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
      rotationInterval: pulumi.Input.fromValue(
        map['rotationInterval'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

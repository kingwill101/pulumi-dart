// ignore_for_file: unused_element, unnecessary_cast


class GetKeysKey {
  /// The Alibaba Cloud Resource Name (ARN) of the key.
  final String arn;
  /// (Available in 1.123.1+) Specifies whether to enable automatic key rotation.
  final String automaticRotation;
  /// Creation date of key.
  final String creationDate;
  /// The owner of the key.
  final String creator;
  /// Deletion date of key.
  final String deleteDate;
  /// Description of the key.
  final String description;
  /// ID of the key.
  final String id;
  /// (Available in 1.123.1+)  ID of the key.
  final String keyId;
  /// (Available in 1.123.1+)  The type of the CMK.
  final String keySpec;
  /// (Available in 1.123.1+)  The usage of CMK.
  final String keyUsage;
  /// (Available in 1.123.1+)  The date and time the last rotation was performed.
  final String lastRotationDate;
  /// (Available in 1.123.1+)  The time and date the key material for the CMK expires.
  final String materialExpireTime;
  /// (Available in 1.123.1+)  The time the next rotation is scheduled for execution.
  final String nextRotationDate;
  /// (Available in 1.123.1+)  The source of the key material for the CMK.
  final String origin;
  /// (Available in 1.123.1+)  The ID of the current primary key version of the symmetric CMK.
  final String primaryKeyVersion;
  /// (Available in 1.123.1+)  The protection level of the CMK.
  final String protectionLevel;
  /// (Available in 1.123.1+)  The period of automatic key rotation.
  final String rotationInterval;
  /// Filter the results by status of the KMS keys. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  final String status;

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
      arn: map['arn'] as String,
      automaticRotation: map['automaticRotation'] as String,
      creationDate: map['creationDate'] as String,
      creator: map['creator'] as String,
      deleteDate: map['deleteDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      keySpec: map['keySpec'] as String,
      keyUsage: map['keyUsage'] as String,
      lastRotationDate: map['lastRotationDate'] as String,
      materialExpireTime: map['materialExpireTime'] as String,
      nextRotationDate: map['nextRotationDate'] as String,
      origin: map['origin'] as String,
      primaryKeyVersion: map['primaryKeyVersion'] as String,
      protectionLevel: map['protectionLevel'] as String,
      rotationInterval: map['rotationInterval'] as String,
      status: map['status'] as String,
    );
  }
}


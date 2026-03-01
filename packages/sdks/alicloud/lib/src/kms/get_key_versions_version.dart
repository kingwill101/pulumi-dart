// ignore_for_file: unused_element, unnecessary_cast


class GetKeyVersionsVersion {
  /// Date and time when the key version was created (UTC time).
  final String createTime;
  /// (Removed from v1.124.4) It has been removed and using `create_time` instead.
  final String creationDate;
  /// ID of the KMS KeyVersion resource.
  final String id;
  /// The id of kms key.
  final String keyId;
  /// ID of the key version.
  final String keyVersionId;

  /// Creates a new [GetKeyVersionsVersion].
  /// [createTime] Date and time when the key version was created (UTC time).
  /// [creationDate] (Removed from v1.124.4) It has been removed and using `create_time` instead.
  /// [id] ID of the KMS KeyVersion resource.
  /// [keyId] The id of kms key.
  /// [keyVersionId] ID of the key version.
  GetKeyVersionsVersion({
    required this.createTime,
    required this.creationDate,
    required this.id,
    required this.keyId,
    required this.keyVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'creationDate': creationDate,
      'id': id,
      'keyId': keyId,
      'keyVersionId': keyVersionId,
    };
  }

  factory GetKeyVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetKeyVersionsVersion(
      createTime: map['createTime'] as String,
      creationDate: map['creationDate'] as String,
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      keyVersionId: map['keyVersionId'] as String,
    );
  }
}


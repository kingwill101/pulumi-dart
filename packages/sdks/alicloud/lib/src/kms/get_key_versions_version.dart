// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyVersionsVersion {
  /// Date and time when the key version was created (UTC time).
  final pulumi.Input<String> createTime;
  /// (Removed from v1.124.4) It has been removed and using `create_time` instead.
  final pulumi.Input<String> creationDate;
  /// ID of the KMS KeyVersion resource.
  final pulumi.Input<String> id;
  /// The id of kms key.
  final pulumi.Input<String> keyId;
  /// ID of the key version.
  final pulumi.Input<String> keyVersionId;

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
      createTime: (map['createTime'] as String).input(),
      creationDate: (map['creationDate'] as String).input(),
      id: (map['id'] as String).input(),
      keyId: (map['keyId'] as String).input(),
      keyVersionId: (map['keyVersionId'] as String).input(),
    );
  }
}


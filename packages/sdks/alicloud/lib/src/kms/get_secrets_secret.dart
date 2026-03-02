// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsSecret {
  /// (Available since v1.124.0) A mapping of tags to assign to the resource.
  final pulumi.Input<String> arn;
  /// (Available since v1.124.0)  The description of the secret.
  final pulumi.Input<String> description;
  /// (Available since v1.124.0)  The ID of the KMS CMK that is used to encrypt the secret value.
  final pulumi.Input<String> encryptionKeyId;
  /// ID of the Kms Secret. The value is same as KMS secret_name.
  final pulumi.Input<String> id;
  /// Schedule deletion time.
  final pulumi.Input<String> plannedDeleteTime;
  /// (Available since v1.124.0)  The value of the secret that you want to create.
  final pulumi.Input<String> secretData;
  /// (Available since v1.124.0)  The type of the secret data value.
  final pulumi.Input<String> secretDataType;
  /// Name of the KMS Secret.
  final pulumi.Input<String> secretName;
  /// (Available since v1.124.0)  The type of the secret.
  final pulumi.Input<String> secretType;
  /// A mapping of tags to assign to the resource, and can be used to filter secrets.
  final pulumi.Input<Map<String, String>> tags;
  /// (Available since v1.124.0)  The version number of the initial version.
  final pulumi.Input<String> versionId;
  /// (Available since v1.124.0)  The stage labels that mark the new secret version.
  final pulumi.Input<List<String>> versionStages;

  /// Creates a new [GetSecretsSecret].
  /// [arn] (Available since v1.124.0) A mapping of tags to assign to the resource.
  /// [description] (Available since v1.124.0)  The description of the secret.
  /// [encryptionKeyId] (Available since v1.124.0)  The ID of the KMS CMK that is used to encrypt the secret value.
  /// [id] ID of the Kms Secret. The value is same as KMS secret_name.
  /// [plannedDeleteTime] Schedule deletion time.
  /// [secretData] (Available since v1.124.0)  The value of the secret that you want to create.
  /// [secretDataType] (Available since v1.124.0)  The type of the secret data value.
  /// [secretName] Name of the KMS Secret.
  /// [secretType] (Available since v1.124.0)  The type of the secret.
  /// [tags] A mapping of tags to assign to the resource, and can be used to filter secrets.
  /// [versionId] (Available since v1.124.0)  The version number of the initial version.
  /// [versionStages] (Available since v1.124.0)  The stage labels that mark the new secret version.
  GetSecretsSecret({
    required this.arn,
    required this.description,
    required this.encryptionKeyId,
    required this.id,
    required this.plannedDeleteTime,
    required this.secretData,
    required this.secretDataType,
    required this.secretName,
    required this.secretType,
    required this.tags,
    required this.versionId,
    required this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'encryptionKeyId': encryptionKeyId,
      'id': id,
      'plannedDeleteTime': plannedDeleteTime,
      'secretData': secretData,
      'secretDataType': secretDataType,
      'secretName': secretName,
      'secretType': secretType,
      'tags': tags,
      'versionId': versionId,
      'versionStages': versionStages,
    };
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      arn: (map['arn'] as String).input(),
      description: (map['description'] as String).input(),
      encryptionKeyId: (map['encryptionKeyId'] as String).input(),
      id: (map['id'] as String).input(),
      plannedDeleteTime: (map['plannedDeleteTime'] as String).input(),
      secretData: (map['secretData'] as String).input(),
      secretDataType: (map['secretDataType'] as String).input(),
      secretName: (map['secretName'] as String).input(),
      secretType: (map['secretType'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      versionId: (map['versionId'] as String).input(),
      versionStages: ((map['versionStages'] as List).cast<String>()).input(),
    );
  }
}


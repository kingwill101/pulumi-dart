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
      arn: pulumi.Input.fromValue(map['arn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      encryptionKeyId: pulumi.Input.fromValue(map['encryptionKeyId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      plannedDeleteTime: pulumi.Input.fromValue(
        map['plannedDeleteTime'] as String,
      ),
      secretData: pulumi.Input.fromValue(map['secretData'] as String),
      secretDataType: pulumi.Input.fromValue(map['secretDataType'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      versionStages: pulumi.Input.fromValue(
        (map['versionStages'] as List).cast<String>(),
      ),
    );
  }
}

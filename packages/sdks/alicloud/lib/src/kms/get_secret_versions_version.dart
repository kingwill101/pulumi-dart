// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretVersionsVersion {
  /// The secret value. Secrets Manager decrypts the stored secret value in ciphertext and returns it. (Returned when `enable_details` is true).
  final pulumi.Input<String> secretData;
  /// The type of the secret value. (Returned when `enable_details` is true).
  final pulumi.Input<String> secretDataType;
  /// The name of the secret.
  final pulumi.Input<String> secretName;
  /// The version number of the secret value.
  final pulumi.Input<String> versionId;
  /// Stage labels that mark the secret version.
  final pulumi.Input<List<String>> versionStages;

  /// Creates a new [GetSecretVersionsVersion].
  /// [secretData] The secret value. Secrets Manager decrypts the stored secret value in ciphertext and returns it. (Returned when `enable_details` is true).
  /// [secretDataType] The type of the secret value. (Returned when `enable_details` is true).
  /// [secretName] The name of the secret.
  /// [versionId] The version number of the secret value.
  /// [versionStages] Stage labels that mark the secret version.
  GetSecretVersionsVersion({
    required this.secretData,
    required this.secretDataType,
    required this.secretName,
    required this.versionId,
    required this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretData': secretData,
      'secretDataType': secretDataType,
      'secretName': secretName,
      'versionId': versionId,
      'versionStages': versionStages,
    };
  }

  factory GetSecretVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsVersion(
      secretData: (map['secretData'] as String).input(),
      secretDataType: (map['secretDataType'] as String).input(),
      secretName: (map['secretName'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      versionStages: ((map['versionStages'] as List).cast<String>()).input(),
    );
  }
}


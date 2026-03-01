// ignore_for_file: unused_element, unnecessary_cast


class GetSecretVersionsVersion {
  /// The secret value. Secrets Manager decrypts the stored secret value in ciphertext and returns it. (Returned when `enable_details` is true).
  final String secretData;
  /// The type of the secret value. (Returned when `enable_details` is true).
  final String secretDataType;
  /// The name of the secret.
  final String secretName;
  /// The version number of the secret value.
  final String versionId;
  /// Stage labels that mark the secret version.
  final List<String> versionStages;

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
      secretData: map['secretData'] as String,
      secretDataType: map['secretDataType'] as String,
      secretName: map['secretName'] as String,
      versionId: map['versionId'] as String,
      versionStages: (map['versionStages'] as List).cast<String>(),
    );
  }
}


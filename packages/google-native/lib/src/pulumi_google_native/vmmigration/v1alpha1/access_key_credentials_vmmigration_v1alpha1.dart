// ignore_for_file: unused_element, unnecessary_cast

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentialsVmmigrationV1alpha1 {
  /// AWS access key ID.
  final String? accessKeyId;

  /// Input only. AWS secret access key.
  final String? secretAccessKey;

  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final String? sessionToken;

  AccessKeyCredentialsVmmigrationV1alpha1({
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessKeyIdValue = accessKeyId;
    if (accessKeyIdValue != null) {
      map['accessKeyId'] = accessKeyIdValue;
    }
    final secretAccessKeyValue = secretAccessKey;
    if (secretAccessKeyValue != null) {
      map['secretAccessKey'] = secretAccessKeyValue;
    }
    final sessionTokenValue = sessionToken;
    if (sessionTokenValue != null) {
      map['sessionToken'] = sessionTokenValue;
    }
    return map;
  }

  factory AccessKeyCredentialsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AccessKeyCredentialsVmmigrationV1alpha1(
      accessKeyId:
          map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] == null
          ? null
          : map['secretAccessKey'] as String,
      sessionToken:
          map['sessionToken'] == null ? null : map['sessionToken'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentials {
  /// AWS access key ID.
  final String? accessKeyId;

  /// Input only. AWS secret access key.
  final String? secretAccessKey;

  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final String? sessionToken;

  /// Creates a new [AccessKeyCredentials].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] Input only. AWS secret access key.
  /// [sessionToken] Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  AccessKeyCredentials({
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
      'sessionToken': ?sessionToken,
    };
  }

  factory AccessKeyCredentials.fromMap(Map<String, dynamic> map) {
    return AccessKeyCredentials(
      accessKeyId: map['accessKeyId'] == null
          ? null
          : map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] == null
          ? null
          : map['secretAccessKey'] as String,
      sessionToken: map['sessionToken'] == null
          ? null
          : map['sessionToken'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentialsResponse2 {
  /// AWS access key ID.
  final String accessKeyId;

  /// Input only. AWS secret access key.
  final String secretAccessKey;

  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final String sessionToken;

  AccessKeyCredentialsResponse2({
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['secretAccessKey'] = secretAccessKey;
    map['sessionToken'] = sessionToken;
    return map;
  }

  factory AccessKeyCredentialsResponse2.fromMap(Map<String, dynamic> map) {
    return AccessKeyCredentialsResponse2(
      accessKeyId: map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
      sessionToken: map['sessionToken'] as String,
    );
  }
}

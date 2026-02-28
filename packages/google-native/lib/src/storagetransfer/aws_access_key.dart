// ignore_for_file: unused_element, unnecessary_cast

/// AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)). For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
class AwsAccessKey {
  /// AWS access key ID.
  final String accessKeyId;

  /// AWS secret access key. This field is not returned in RPC responses.
  final String secretAccessKey;

  /// Creates a new [AwsAccessKey].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] AWS secret access key. This field is not returned in RPC responses.
  AwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['secretAccessKey'] = secretAccessKey;
    return map;
  }

  factory AwsAccessKey.fromMap(Map<String, dynamic> map) {
    return AwsAccessKey(
      accessKeyId: map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
    );
  }
}

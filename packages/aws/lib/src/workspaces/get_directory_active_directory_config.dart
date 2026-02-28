// ignore_for_file: unused_element, unnecessary_cast


class GetDirectoryActiveDirectoryConfig {
  /// Fully qualified domain name of the AWS Directory Service directory.
  final String domainName;
  /// ARN of the Secrets Manager secret that contains the credentials for the service account.
  final String serviceAccountSecretArn;

  /// Creates a new [GetDirectoryActiveDirectoryConfig].
  /// [domainName] Fully qualified domain name of the AWS Directory Service directory.
  /// [serviceAccountSecretArn] ARN of the Secrets Manager secret that contains the credentials for the service account.
  GetDirectoryActiveDirectoryConfig({
    required this.domainName,
    required this.serviceAccountSecretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'serviceAccountSecretArn': serviceAccountSecretArn,
    };
  }

  factory GetDirectoryActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GetDirectoryActiveDirectoryConfig(
      domainName: map['domainName'] as String,
      serviceAccountSecretArn: map['serviceAccountSecretArn'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class DirectoryActiveDirectoryConfig {
  /// Fully qualified domain name of the AWS Directory Service directory.
  final String domainName;

  /// ARN of the Secrets Manager secret that contains the credentials for the service account. For more information, see [Service Account Details](https://docs.aws.amazon.com/workspaces/latest/adminguide/pools-service-account-details.html).
  final String serviceAccountSecretArn;

  /// Creates a new [DirectoryActiveDirectoryConfig].
  /// [domainName] Fully qualified domain name of the AWS Directory Service directory.
  /// [serviceAccountSecretArn] ARN of the Secrets Manager secret that contains the credentials for the service account. For more information, see [Service Account Details](https://docs.aws.amazon.com/workspaces/latest/adminguide/pools-service-account-details.html).
  DirectoryActiveDirectoryConfig({
    required this.domainName,
    required this.serviceAccountSecretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'serviceAccountSecretArn': serviceAccountSecretArn,
    };
  }

  factory DirectoryActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return DirectoryActiveDirectoryConfig(
      domainName: map['domainName'] as String,
      serviceAccountSecretArn: map['serviceAccountSecretArn'] as String,
    );
  }
}

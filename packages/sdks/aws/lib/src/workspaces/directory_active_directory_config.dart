// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryActiveDirectoryConfig {
  /// Fully qualified domain name of the AWS Directory Service directory.
  final pulumi.Input<String> domainName;
  /// ARN of the Secrets Manager secret that contains the credentials for the service account. For more information, see [Service Account Details](https://docs.aws.amazon.com/workspaces/latest/adminguide/pools-service-account-details.html).
  final pulumi.Input<String> serviceAccountSecretArn;

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
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      serviceAccountSecretArn: pulumi.Input.fromValue(map['serviceAccountSecretArn'] as String),
    );
  }
}


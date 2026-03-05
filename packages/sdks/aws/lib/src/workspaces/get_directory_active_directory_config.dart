// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryActiveDirectoryConfig {
  /// Fully qualified domain name of the AWS Directory Service directory.
  final pulumi.Input<String> domainName;
  /// ARN of the Secrets Manager secret that contains the credentials for the service account.
  final pulumi.Input<String> serviceAccountSecretArn;

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
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      serviceAccountSecretArn: pulumi.Input.fromValue(map['serviceAccountSecretArn'] as String),
    );
  }
}


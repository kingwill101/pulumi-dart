// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentRegistryCredential {
  /// ARN or name of credentials created using AWS Secrets Manager.
  final pulumi.Input<String> credential;
  /// Service that created the credentials to access a private Docker registry. Valid
  /// value: `SECRETS_MANAGER` (AWS Secrets Manager).
  final pulumi.Input<String> credentialProvider;

  /// Creates a new [ProjectEnvironmentRegistryCredential].
  /// [credential] ARN or name of credentials created using AWS Secrets Manager.
  /// [credentialProvider] Service that created the credentials to access a private Docker registry. Valid
  ProjectEnvironmentRegistryCredential({
    required this.credential,
    required this.credentialProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': credential,
      'credentialProvider': credentialProvider,
    };
  }

  factory ProjectEnvironmentRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentRegistryCredential(
      credential: pulumi.Input.fromValue(map['credential'] as String),
      credentialProvider: pulumi.Input.fromValue(map['credentialProvider'] as String),
    );
  }
}


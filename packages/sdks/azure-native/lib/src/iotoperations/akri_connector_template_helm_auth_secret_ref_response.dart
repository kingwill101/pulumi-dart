// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateHelmAuthSecretRef properties.
class AkriConnectorTemplateHelmAuthSecretRefResponse {
  /// The key of the password in the secret.
  final pulumi.Input<String> passwordKey;
  /// The name of the secret.
  final pulumi.Input<String> secretRef;
  /// The key of the username in the secret.
  final pulumi.Input<String> usernameKey;

  /// Creates a new [AkriConnectorTemplateHelmAuthSecretRefResponse].
  /// [passwordKey] The key of the password in the secret.
  /// [secretRef] The name of the secret.
  /// [usernameKey] The key of the username in the secret.
  const AkriConnectorTemplateHelmAuthSecretRefResponse({
    required this.passwordKey,
    required this.secretRef,
    required this.usernameKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordKey': passwordKey,
      'secretRef': secretRef,
      'usernameKey': usernameKey,
    };
  }

  factory AkriConnectorTemplateHelmAuthSecretRefResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAuthSecretRefResponse(
      passwordKey: pulumi.Input.fromValue(map['passwordKey'] as String),
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
      usernameKey: pulumi.Input.fromValue(map['usernameKey'] as String),
    );
  }
}


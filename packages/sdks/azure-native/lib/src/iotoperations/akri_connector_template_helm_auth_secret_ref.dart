// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateHelmAuthSecretRef properties.
class AkriConnectorTemplateHelmAuthSecretRef {
  /// The key of the password in the secret.
  final String passwordKey;
  /// The name of the secret.
  final String secretRef;
  /// The key of the username in the secret.
  final String usernameKey;

  /// Creates a new [AkriConnectorTemplateHelmAuthSecretRef].
  /// [passwordKey] The key of the password in the secret.
  /// [secretRef] The name of the secret.
  /// [usernameKey] The key of the username in the secret.
  AkriConnectorTemplateHelmAuthSecretRef({
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

  factory AkriConnectorTemplateHelmAuthSecretRef.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAuthSecretRef(
      passwordKey: map['passwordKey'] as String,
      secretRef: map['secretRef'] as String,
      usernameKey: map['usernameKey'] as String,
    );
  }
}


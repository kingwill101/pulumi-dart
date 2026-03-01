// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsSecret properties.
class AkriConnectorsSecret {
  /// The application-defined alias for the secret.
  final String secretAlias;
  /// The key in the secret to be mounted.
  final String secretKey;
  /// The name of the secret to be mounted.
  final String secretRef;

  /// Creates a new [AkriConnectorsSecret].
  /// [secretAlias] The application-defined alias for the secret.
  /// [secretKey] The key in the secret to be mounted.
  /// [secretRef] The name of the secret to be mounted.
  AkriConnectorsSecret({
    required this.secretAlias,
    required this.secretKey,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretAlias': secretAlias,
      'secretKey': secretKey,
      'secretRef': secretRef,
    };
  }

  factory AkriConnectorsSecret.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsSecret(
      secretAlias: map['secretAlias'] as String,
      secretKey: map['secretKey'] as String,
      secretRef: map['secretRef'] as String,
    );
  }
}


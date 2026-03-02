// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsSecret properties.
class AkriConnectorsSecret {
  /// The application-defined alias for the secret.
  final pulumi.Input<String> secretAlias;
  /// The key in the secret to be mounted.
  final pulumi.Input<String> secretKey;
  /// The name of the secret to be mounted.
  final pulumi.Input<String> secretRef;

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
      secretAlias: (map['secretAlias'] as String).input(),
      secretKey: (map['secretKey'] as String).input(),
      secretRef: (map['secretRef'] as String).input(),
    );
  }
}


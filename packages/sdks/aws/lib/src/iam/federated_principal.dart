// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Federated principal for identity providers.
class FederatedPrincipal {
  /// The federated principal identifier.
  final pulumi.Input<String> federated;

  /// Creates a new [FederatedPrincipal].
  /// [federated] The federated principal identifier.
  FederatedPrincipal({
    required this.federated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Federated': federated,
    };
  }

  factory FederatedPrincipal.fromMap(Map<String, dynamic> map) {
    return FederatedPrincipal(
      federated: pulumi.Input.fromValue(map['Federated'] as String),
    );
  }
}


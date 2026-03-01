// ignore_for_file: unused_element, unnecessary_cast

/// Federated principal for identity providers.
class FederatedPrincipal {
  /// The federated principal identifier.
  final String federated;

  /// Creates a new [FederatedPrincipal].
  /// [federated] The federated principal identifier.
  FederatedPrincipal({required this.federated});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'Federated': federated};
  }

  factory FederatedPrincipal.fromMap(Map<String, dynamic> map) {
    return FederatedPrincipal(federated: map['Federated'] as String);
  }
}

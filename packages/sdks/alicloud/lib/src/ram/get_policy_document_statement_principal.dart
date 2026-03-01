// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyDocumentStatementPrincipal {
  /// The trusted entity. Valid values: `RAM`, `Service` and `Federated`.
  final String entity;
  /// The identifiers of the principal.
  final List<String> identifiers;

  /// Creates a new [GetPolicyDocumentStatementPrincipal].
  /// [entity] The trusted entity. Valid values: `RAM`, `Service` and `Federated`.
  /// [identifiers] The identifiers of the principal.
  GetPolicyDocumentStatementPrincipal({
    required this.entity,
    required this.identifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': entity,
      'identifiers': identifiers,
    };
  }

  factory GetPolicyDocumentStatementPrincipal.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatementPrincipal(
      entity: map['entity'] as String,
      identifiers: (map['identifiers'] as List).cast<String>(),
    );
  }
}


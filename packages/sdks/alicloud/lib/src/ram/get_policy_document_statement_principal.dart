// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyDocumentStatementPrincipal {
  /// The trusted entity. Valid values: `RAM`, `Service` and `Federated`.
  final pulumi.Input<String> entity;

  /// The identifiers of the principal.
  final pulumi.Input<List<String>> identifiers;

  /// Creates a new [GetPolicyDocumentStatementPrincipal].
  /// [entity] The trusted entity. Valid values: `RAM`, `Service` and `Federated`.
  /// [identifiers] The identifiers of the principal.
  GetPolicyDocumentStatementPrincipal({
    required this.entity,
    required this.identifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entity': entity, 'identifiers': identifiers};
  }

  factory GetPolicyDocumentStatementPrincipal.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicyDocumentStatementPrincipal(
      entity: pulumi.Input.fromValue(map['entity'] as String),
      identifiers: pulumi.Input.fromValue(
        (map['identifiers'] as List).cast<String>(),
      ),
    );
  }
}

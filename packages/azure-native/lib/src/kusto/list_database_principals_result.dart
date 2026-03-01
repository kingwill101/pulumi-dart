// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_principal_response.dart';

/// Result data returned by listDatabasePrincipals.
class ListDatabasePrincipalsResult {
  /// The list of Kusto database principals.
  final List<DatabasePrincipalResponse>? value;

  /// Creates a new [ListDatabasePrincipalsResult].
  /// [value] The list of Kusto database principals.
  ListDatabasePrincipalsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<DatabasePrincipalResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListDatabasePrincipalsResult.fromMap(Map<String, dynamic> map) {
    return ListDatabasePrincipalsResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<DatabasePrincipalResponse>(map['value'], (value) => DatabasePrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


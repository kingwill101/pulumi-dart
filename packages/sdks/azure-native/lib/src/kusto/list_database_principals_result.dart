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
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatabasePrincipalResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDatabasePrincipalsResult.fromMap(Map<String, dynamic> map) {
    return ListDatabasePrincipalsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabasePrincipalResponse>(guardedValue, (value) => DatabasePrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}


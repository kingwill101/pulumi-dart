// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_connection_string_response.dart';

/// Result data returned by listDatabaseAccountConnectionStrings.
class ListDatabaseAccountConnectionStringsResult {
  /// An array that contains the connection strings for the Cosmos DB account.
  final List<DatabaseAccountConnectionStringResponse>? connectionStrings;

  /// Creates a new [ListDatabaseAccountConnectionStringsResult].
  /// [connectionStrings] An array that contains the connection strings for the Cosmos DB account.
  const ListDatabaseAccountConnectionStringsResult({
    this.connectionStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatabaseAccountConnectionStringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDatabaseAccountConnectionStringsResult.fromMap(Map<String, dynamic> map) {
    return ListDatabaseAccountConnectionStringsResult(
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabaseAccountConnectionStringResponse>(guardedValue, (value) => DatabaseAccountConnectionStringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

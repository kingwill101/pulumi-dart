// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_connection_string_response.dart';

/// Result data returned by listDatabaseAccountConnectionStrings.
class ListDatabaseAccountConnectionStringsResult {
  /// An array that contains the connection strings for the Cosmos DB account.
  final List<DatabaseAccountConnectionStringResponse>? connectionStrings;

  /// Creates a new [ListDatabaseAccountConnectionStringsResult].
  /// [connectionStrings] An array that contains the connection strings for the Cosmos DB account.
  ListDatabaseAccountConnectionStringsResult({
    this.connectionStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStrings': ?connectionStrings == null ? null : pulumi.Input.encodeList<DatabaseAccountConnectionStringResponse, Map<String, dynamic>>(connectionStrings!, (value) => value.toMap()),
    };
  }

  factory ListDatabaseAccountConnectionStringsResult.fromMap(Map<String, dynamic> map) {
    return ListDatabaseAccountConnectionStringsResult(
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Input.decodeList<DatabaseAccountConnectionStringResponse>(map['connectionStrings']!, (value) => DatabaseAccountConnectionStringResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


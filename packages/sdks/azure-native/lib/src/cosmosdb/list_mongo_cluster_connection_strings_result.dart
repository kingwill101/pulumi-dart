// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_string_response.dart';

/// Result data returned by listMongoClusterConnectionStrings.
class ListMongoClusterConnectionStringsResult {
  /// An array that contains the connection strings for a mongo cluster.
  final List<ConnectionStringResponse>? connectionStrings;

  /// Creates a new [ListMongoClusterConnectionStringsResult].
  /// [connectionStrings] An array that contains the connection strings for a mongo cluster.
  const ListMongoClusterConnectionStringsResult({
    this.connectionStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectionStringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListMongoClusterConnectionStringsResult.fromMap(Map<String, dynamic> map) {
    return ListMongoClusterConnectionStringsResult(
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectionStringResponse>(guardedValue, (value) => ConnectionStringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

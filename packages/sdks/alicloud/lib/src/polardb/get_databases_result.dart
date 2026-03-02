// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database.dart';

/// Result data returned by getDatabases.
class GetDatabasesResult {
  /// A list of PolarDB cluster databases. Each element contains the following attributes:
  final List<GetDatabasesDatabase> databases;
  final String dbClusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  /// database name of the cluster.
  final List<String> names;

  /// Creates a new [GetDatabasesResult].
  /// [databases] A list of PolarDB cluster databases. Each element contains the following attributes:
  /// [dbClusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] database name of the cluster.
  GetDatabasesResult({
    required this.databases,
    required this.dbClusterId,
    required this.id,
    this.nameRegex,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<GetDatabasesDatabase, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'dbClusterId': dbClusterId,
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
    };
  }

  factory GetDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasesResult(
      databases: pulumi.Input.decodeList<GetDatabasesDatabase>(map['databases'], (value) => GetDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())),
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}


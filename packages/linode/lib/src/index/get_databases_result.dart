// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database.dart';
import 'get_databases_filter.dart';

/// Result data returned by getDatabases.
class GetDatabasesResult {
  final List<GetDatabasesDatabase> databases;
  final List<GetDatabasesFilter>? filters;
  /// The ID of the Managed Database.
  final String id;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetDatabasesResult].
  /// [databases] Required.
  /// [filters] Optional.
  /// [id] The ID of the Managed Database.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetDatabasesResult({
    required this.databases,
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<GetDatabasesDatabase, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetDatabasesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasesResult(
      databases: pulumi.Input.decodeList<GetDatabasesDatabase>(map['databases'], (value) => GetDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDatabasesFilter>(map['filters'], (value) => GetDatabasesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}


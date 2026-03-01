// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_backups_backup.dart';
import 'get_database_backups_filter.dart';

/// Result data returned by getDatabaseBackups.
class GetDatabaseBackupsResult {
  final List<GetDatabaseBackupsBackup> backups;
  final int databaseId;
  final String databaseType;
  final List<GetDatabaseBackupsFilter>? filters;
  /// The ID of the database backup object.
  final int id;
  final bool? latest;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetDatabaseBackupsResult].
  /// [backups] Required.
  /// [databaseId] Required.
  /// [databaseType] Required.
  /// [filters] Optional.
  /// [id] The ID of the database backup object.
  /// [latest] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetDatabaseBackupsResult({
    required this.backups,
    required this.databaseId,
    required this.databaseType,
    this.filters,
    required this.id,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': pulumi.Input.encodeList<GetDatabaseBackupsBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'databaseId': databaseId,
      'databaseType': databaseType,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetDatabaseBackupsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseBackupsResult(
      backups: pulumi.Input.decodeList<GetDatabaseBackupsBackup>(map['backups'], (value) => GetDatabaseBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      databaseId: map['databaseId'] as int,
      databaseType: map['databaseType'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDatabaseBackupsFilter>(map['filters'], (value) => GetDatabaseBackupsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as int,
      latest: map['latest'] == null ? null : map['latest'] as bool,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}


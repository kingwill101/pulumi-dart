// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_mysql_backups_backup.dart';
import 'get_database_mysql_backups_filter.dart';

/// Result data returned by getDatabaseMysqlBackups.
class GetDatabaseMysqlBackupsResult {
  final List<GetDatabaseMysqlBackupsBackup> backups;
  final int databaseId;
  final List<GetDatabaseMysqlBackupsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? latest;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetDatabaseMysqlBackupsResult].
  /// [backups] Required.
  /// [databaseId] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latest] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetDatabaseMysqlBackupsResult({
    required this.backups,
    required this.databaseId,
    this.filters,
    required this.id,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': pulumi.Input.encodeList<GetDatabaseMysqlBackupsBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'databaseId': databaseId,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetDatabaseMysqlBackupsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseMysqlBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlBackupsResult(
      backups: pulumi.Input.decodeList<GetDatabaseMysqlBackupsBackup>(map['backups'], (value) => GetDatabaseMysqlBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      databaseId: map['databaseId'] as int,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDatabaseMysqlBackupsFilter>(map['filters'], (value) => GetDatabaseMysqlBackupsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      latest: map['latest'] == null ? null : map['latest'] as bool,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}


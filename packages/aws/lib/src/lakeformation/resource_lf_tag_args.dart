// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tag_database.dart';
import 'resource_lf_tag_lf_tag.dart';
import 'resource_lf_tag_table.dart';
import 'resource_lf_tag_table_with_columns.dart';
import 'resource_lf_tag_timeouts.dart';

/// {@template pulumi_lakeformation_resource_lf_tag_resource_lf_tag_args_doc}
/// The set of arguments for ResourceLfTag.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_resource_lf_tag_resource_lf_tag_args_doc}
class ResourceLfTagArgs {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final pulumi.Input<String>? catalogId;

  /// Configuration block for a database resource. See Database for more details.
  final pulumi.Input<ResourceLfTagDatabase>? database;

  /// Set of LF-tags to attach to the resource. See LF Tag for more details.
  ///
  /// Exactly one of the following is required:
  final pulumi.Input<ResourceLfTagLfTag> lfTag;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for a table resource. See Table for more details.
  final pulumi.Input<ResourceLfTagTable>? table;

  /// Configuration block for a table with columns resource. See Table With Columns for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResourceLfTagTableWithColumns>? tableWithColumns;
  final pulumi.Input<ResourceLfTagTimeouts>? timeouts;

  /// Creates a new [ResourceLfTagArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  /// [database] Configuration block for a database resource. See Database for more details.
  /// [lfTag] Set of LF-tags to attach to the resource. See LF Tag for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [table] Configuration block for a table resource. See Table for more details.
  /// [tableWithColumns] Configuration block for a table with columns resource. See Table With Columns for more details.
  /// [timeouts] Optional.
  ResourceLfTagArgs({
    String? catalogId,
    ResourceLfTagDatabase? database,
    required ResourceLfTagLfTag lfTag,
    String? region,
    ResourceLfTagTable? table,
    ResourceLfTagTableWithColumns? tableWithColumns,
    ResourceLfTagTimeouts? timeouts,
  })  : catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
        database =
            pulumi.Input.asOptionalInput<ResourceLfTagDatabase>(database),
        lfTag = pulumi.Input.asInput<ResourceLfTagLfTag>(lfTag),
        region = pulumi.Input.asOptionalInput<String>(region),
        table = pulumi.Input.asOptionalInput<ResourceLfTagTable>(table),
        tableWithColumns =
            pulumi.Input.asOptionalInput<ResourceLfTagTableWithColumns>(
                tableWithColumns),
        timeouts =
            pulumi.Input.asOptionalInput<ResourceLfTagTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = pulumi.Input.mapOptionalInputValue<
          ResourceLfTagDatabase,
          Map<String, dynamic>>(databaseValue, (value) => value.toMap());
    }
    map['lfTag'] =
        pulumi.Input.mapInputValue<ResourceLfTagLfTag, Map<String, dynamic>>(
            lfTag, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = pulumi.Input.mapOptionalInputValue<ResourceLfTagTable,
          Map<String, dynamic>>(tableValue, (value) => value.toMap());
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = pulumi.Input.mapOptionalInputValue<
              ResourceLfTagTableWithColumns, Map<String, dynamic>>(
          tableWithColumnsValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ResourceLfTagTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourceLfTagArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagArgs(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      database: map['database'] == null
          ? null
          : ResourceLfTagDatabase.fromMap(
              (map['database'] as Map).cast<String, dynamic>()),
      lfTag: ResourceLfTagLfTag.fromMap(
          (map['lfTag'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      table: map['table'] == null
          ? null
          : ResourceLfTagTable.fromMap(
              (map['table'] as Map).cast<String, dynamic>()),
      tableWithColumns: map['tableWithColumns'] == null
          ? null
          : ResourceLfTagTableWithColumns.fromMap(
              (map['tableWithColumns'] as Map).cast<String, dynamic>()),
      timeouts: map['timeouts'] == null
          ? null
          : ResourceLfTagTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

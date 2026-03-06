// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tags_database.dart';
import 'resource_lf_tags_lf_tag.dart';
import 'resource_lf_tags_table.dart';
import 'resource_lf_tags_table_with_columns.dart';

/// {@template pulumi_lakeformation_resource_lf_tags_resource_lf_tags_args_doc}
/// The set of arguments for ResourceLfTags.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_resource_lf_tags_resource_lf_tags_args_doc}
class ResourceLfTagsArgs {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final pulumi.Input<String>? catalogId;
  /// Configuration block for a database resource. See below.
  final pulumi.Input<ResourceLfTagsDatabase>? database;
  /// Set of LF-tags to attach to the resource. See below.
  ///
  /// Exactly one of the following is required:
  final pulumi.Input<List<ResourceLfTagsLfTag>> lfTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for a table resource. See below.
  final pulumi.Input<ResourceLfTagsTable>? table;
  /// Configuration block for a table with columns resource. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResourceLfTagsTableWithColumns>? tableWithColumns;

  /// Creates a new [ResourceLfTagsArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  /// [database] Configuration block for a database resource. See below.
  /// [lfTags] Set of LF-tags to attach to the resource. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [table] Configuration block for a table resource. See below.
  /// [tableWithColumns] Configuration block for a table with columns resource. See below.
  const ResourceLfTagsArgs({
    this.catalogId,
    this.database,
    required this.lfTags,
    this.region,
    this.table,
    this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'database': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagsDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTags': pulumi.Input.mapInputValue<List<ResourceLfTagsLfTag>, List<Map<String, dynamic>>>(lfTags, (value) => pulumi.Input.encodeList<ResourceLfTagsLfTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'table': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagsTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagsTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
    };
  }

  factory ResourceLfTagsArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLfTagsDatabase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lfTags: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceLfTagsLfTag>(map['lfTags']!, (value) => ResourceLfTagsLfTag.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLfTagsTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableWithColumns: (() { final guardedValue = map['tableWithColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLfTagsTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


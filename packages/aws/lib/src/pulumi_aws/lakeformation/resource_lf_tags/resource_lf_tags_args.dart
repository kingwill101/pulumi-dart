// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_lf_tags_database/resource_lf_tags_database.dart';
import '../resource_lf_tags_lf_tag/resource_lf_tags_lf_tag.dart';
import '../resource_lf_tags_table/resource_lf_tags_table.dart';
import '../resource_lf_tags_table_with_columns/resource_lf_tags_table_with_columns.dart';

/// The set of arguments for ResourceLfTags.
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

  ResourceLfTagsArgs({
    this.catalogId,
    this.database,
    required this.lfTags,
    this.region,
    this.table,
    this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = pulumi.Input.mapOptionalInputValue<
          ResourceLfTagsDatabase,
          Map<String, dynamic>>(databaseValue, (value) => value.toMap());
    }
    map['lfTags'] = pulumi.Input.mapInputValue<List<ResourceLfTagsLfTag>,
            List<Map<String, dynamic>>>(
        lfTags,
        (value) =>
            pulumi.Input.encodeList<ResourceLfTagsLfTag, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = pulumi.Input.mapOptionalInputValue<ResourceLfTagsTable,
          Map<String, dynamic>>(tableValue, (value) => value.toMap());
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = pulumi.Input.mapOptionalInputValue<
              ResourceLfTagsTableWithColumns, Map<String, dynamic>>(
          tableWithColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourceLfTagsArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsArgs(
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      database:
          pulumi.Input.asOptionalInput<ResourceLfTagsDatabase>(map['database']),
      lfTags: pulumi.Input.asInput<List<ResourceLfTagsLfTag>>(map['lfTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      table: pulumi.Input.asOptionalInput<ResourceLfTagsTable>(map['table']),
      tableWithColumns:
          pulumi.Input.asOptionalInput<ResourceLfTagsTableWithColumns>(
              map['tableWithColumns']),
    );
  }
}

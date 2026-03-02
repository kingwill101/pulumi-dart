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
    this.catalogId,
    this.database,
    required this.lfTag,
    this.region,
    this.table,
    this.tableWithColumns,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'database': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTag': pulumi.Input.mapInputValue<ResourceLfTagLfTag, Map<String, dynamic>>(lfTag, (value) => value.toMap()),
      'region': ?region,
      'table': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ResourceLfTagArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagArgs(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      database: map['database'] == null ? null : (ResourceLfTagDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())).input(),
      lfTag: (ResourceLfTagLfTag.fromMap((map['lfTag'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      table: map['table'] == null ? null : (ResourceLfTagTable.fromMap((map['table'] as Map).cast<String, dynamic>())).input(),
      tableWithColumns: map['tableWithColumns'] == null ? null : (ResourceLfTagTableWithColumns.fromMap((map['tableWithColumns'] as Map).cast<String, dynamic>())).input(),
      timeouts: map['timeouts'] == null ? null : (ResourceLfTagTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


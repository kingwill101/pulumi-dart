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
      'database':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceLfTagDatabase,
            Map<String, dynamic>
          >(database, (value) => value.toMap()),
      'lfTag':
          pulumi.Input.mapInputValue<ResourceLfTagLfTag, Map<String, dynamic>>(
            lfTag,
            (value) => value.toMap(),
          ),
      'region': ?region,
      'table':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceLfTagTable,
            Map<String, dynamic>
          >(table, (value) => value.toMap()),
      'tableWithColumns':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceLfTagTableWithColumns,
            Map<String, dynamic>
          >(tableWithColumns, (value) => value.toMap()),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceLfTagTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ResourceLfTagArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagArgs(
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceLfTagDatabase.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lfTag: pulumi.Input.fromValue(
        ResourceLfTagLfTag.fromMap(
          (map['lfTag']! as Map).cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      table: (() {
        final guardedValue = map['table'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceLfTagTable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableWithColumns: (() {
        final guardedValue = map['tableWithColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceLfTagTableWithColumns.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceLfTagTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

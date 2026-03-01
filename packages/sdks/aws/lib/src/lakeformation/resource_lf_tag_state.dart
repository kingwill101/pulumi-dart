// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tag_database.dart';
import 'resource_lf_tag_lf_tag.dart';
import 'resource_lf_tag_table.dart';
import 'resource_lf_tag_table_with_columns.dart';
import 'resource_lf_tag_timeouts.dart';

/// Input properties used for looking up and filtering ResourceLfTag resources.
class ResourceLfTagState {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final pulumi.Input<String>? catalogId;
  /// Configuration block for a database resource. See Database for more details.
  final pulumi.Input<ResourceLfTagDatabase>? database;
  /// Set of LF-tags to attach to the resource. See LF Tag for more details.
  ///
  /// Exactly one of the following is required:
  final pulumi.Input<ResourceLfTagLfTag>? lfTag;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for a table resource. See Table for more details.
  final pulumi.Input<ResourceLfTagTable>? table;
  /// Configuration block for a table with columns resource. See Table With Columns for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResourceLfTagTableWithColumns>? tableWithColumns;
  final pulumi.Input<ResourceLfTagTimeouts>? timeouts;

  /// Creates a new [ResourceLfTagState].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  /// [database] Configuration block for a database resource. See Database for more details.
  /// [lfTag] Set of LF-tags to attach to the resource. See LF Tag for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [table] Configuration block for a table resource. See Table for more details.
  /// [tableWithColumns] Configuration block for a table with columns resource. See Table With Columns for more details.
  /// [timeouts] Optional.
  ResourceLfTagState({
    pulumi.Output<String>? catalogId,
    pulumi.Output<ResourceLfTagDatabase>? database,
    pulumi.Output<ResourceLfTagLfTag>? lfTag,
    pulumi.Output<String>? region,
    pulumi.Output<ResourceLfTagTable>? table,
    pulumi.Output<ResourceLfTagTableWithColumns>? tableWithColumns,
    pulumi.Output<ResourceLfTagTimeouts>? timeouts,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      database = pulumi.Input.asOptionalInput<ResourceLfTagDatabase>(database),
      lfTag = pulumi.Input.asOptionalInput<ResourceLfTagLfTag>(lfTag),
      region = pulumi.Input.asOptionalInput<String>(region),
      table = pulumi.Input.asOptionalInput<ResourceLfTagTable>(table),
      tableWithColumns = pulumi.Input.asOptionalInput<ResourceLfTagTableWithColumns>(tableWithColumns),
      timeouts = pulumi.Input.asOptionalInput<ResourceLfTagTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'database': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTag': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagLfTag, Map<String, dynamic>>(lfTag, (value) => value.toMap()),
      'region': ?region,
      'table': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ResourceLfTagState.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagState(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<ResourceLfTagDatabase>(ResourceLfTagDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())),
      lfTag: map['lfTag'] == null ? null : pulumi.Output.create<ResourceLfTagLfTag>(ResourceLfTagLfTag.fromMap((map['lfTag'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<ResourceLfTagTable>(ResourceLfTagTable.fromMap((map['table'] as Map).cast<String, dynamic>())),
      tableWithColumns: map['tableWithColumns'] == null ? null : pulumi.Output.create<ResourceLfTagTableWithColumns>(ResourceLfTagTableWithColumns.fromMap((map['tableWithColumns'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResourceLfTagTimeouts>(ResourceLfTagTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


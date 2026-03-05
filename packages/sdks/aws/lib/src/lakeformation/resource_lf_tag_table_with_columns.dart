// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tag_table_with_columns_column_wildcard.dart';

class ResourceLfTagTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// Set of column names for the table.
  final pulumi.Input<List<String>>? columnNames;
  /// Option to add column wildcard. See Column Wildcard for more details.
  final pulumi.Input<ResourceLfTagTableWithColumnsColumnWildcard>? columnWildcard;
  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final pulumi.Input<String> databaseName;
  /// Name of the table resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Creates a new [ResourceLfTagTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table.
  /// [columnWildcard] Option to add column wildcard. See Column Wildcard for more details.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [name] Name of the table resource.
  ResourceLfTagTableWithColumns({
    this.catalogId,
    this.columnNames,
    this.columnWildcard,
    required this.databaseName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'columnNames': ?columnNames,
      'columnWildcard': ?pulumi.Input.mapOptionalInputValue<ResourceLfTagTableWithColumnsColumnWildcard, Map<String, dynamic>>(columnWildcard, (value) => value.toMap()),
      'databaseName': databaseName,
      'name': name,
    };
  }

  factory ResourceLfTagTableWithColumns.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagTableWithColumns(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columnWildcard: (() { final guardedValue = map['columnWildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLfTagTableWithColumnsColumnWildcard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


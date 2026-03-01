// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column.dart';

/// Table's schema.
class Schema {
  /// A list of table custom columns.
  final List<Column>? columns;
  /// Table description.
  final String? description;
  /// Table display name.
  final String? displayName;
  /// Table name.
  final String? name;

  /// Creates a new [Schema].
  /// [columns] A list of table custom columns.
  /// [description] Table description.
  /// [displayName] Table display name.
  /// [name] Table name.
  Schema({
    this.columns,
    this.description,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null ? null : pulumi.Input.encodeList<Column, Map<String, dynamic>>(columns!, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory Schema.fromMap(Map<String, dynamic> map) {
    return Schema(
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<Column>(map['columns'], (value) => Column.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


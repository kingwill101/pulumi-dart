// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceLfTagTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;

  /// Name of the database for the table. Unique to a Data Catalog.
  final pulumi.Input<String> databaseName;

  /// Name of the table.
  final pulumi.Input<String>? name;

  /// Whether to use a wildcard representing every table under a database. Defaults to `false`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool>? wildcard;

  /// Creates a new [ResourceLfTagTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] Name of the database for the table. Unique to a Data Catalog.
  /// [name] Name of the table.
  /// [wildcard] Whether to use a wildcard representing every table under a database. Defaults to `false`.
  ResourceLfTagTable({
    this.catalogId,
    required this.databaseName,
    this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'name': ?name,
      'wildcard': ?wildcard,
    };
  }

  factory ResourceLfTagTable.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagTable(
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wildcard: (() {
        final guardedValue = map['wildcard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

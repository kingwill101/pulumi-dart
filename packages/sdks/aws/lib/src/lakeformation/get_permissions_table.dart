// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPermissionsTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String> catalogId;
  /// Name of the database for the table. Unique to a Data Catalog.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> databaseName;
  /// Name of the table. At least one of `name` or `wildcard` is required.
  final pulumi.Input<String> name;
  /// Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  final pulumi.Input<bool>? wildcard;

  /// Creates a new [GetPermissionsTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] Name of the database for the table. Unique to a Data Catalog.
  /// [name] Name of the table. At least one of `name` or `wildcard` is required.
  /// [wildcard] Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  GetPermissionsTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseName': databaseName,
      'name': name,
      'wildcard': ?wildcard,
    };
  }

  factory GetPermissionsTable.fromMap(Map<String, dynamic> map) {
    return GetPermissionsTable(
      catalogId: (map['catalogId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: (map['name'] as String).input(),
      wildcard: map['wildcard'] == null ? null : ((map['wildcard'] as bool).input()).input(),
    );
  }
}


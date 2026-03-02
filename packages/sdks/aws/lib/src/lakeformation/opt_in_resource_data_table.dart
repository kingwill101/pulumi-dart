// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final pulumi.Input<String> databaseName;
  /// Name of the table.
  final pulumi.Input<String>? name;
  /// Boolean value that indicates whether to use a wildcard representing every table under the specified database. When set to true, this represents all tables within the specified database. At least one of TableResource$Name or TableResource$Wildcard is required.
  final pulumi.Input<bool>? wildcard;

  /// Creates a new [OptInResourceDataTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  /// [wildcard] Boolean value that indicates whether to use a wildcard representing every table under the specified database. When set to true, this represents all tables within the specified database. At least one of TableResource$Name or TableResource$Wildcard is required.
  OptInResourceDataTable({
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

  factory OptInResourceDataTable.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataTable(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      wildcard: map['wildcard'] == null ? null : (map['wildcard'] as bool).input(),
    );
  }
}


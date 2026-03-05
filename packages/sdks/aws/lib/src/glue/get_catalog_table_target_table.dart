// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableTargetTable {
  /// ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  final pulumi.Input<String> catalogId;
  /// Name of the metadata database where the table metadata resides.
  final pulumi.Input<String> databaseName;
  /// Name of the table.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetCatalogTableTargetTable].
  /// [catalogId] ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  /// [databaseName] Name of the metadata database where the table metadata resides.
  /// [name] Name of the table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCatalogTableTargetTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseName': databaseName,
      'name': name,
      'region': region,
    };
  }

  factory GetCatalogTableTargetTable.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableTargetTable(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}


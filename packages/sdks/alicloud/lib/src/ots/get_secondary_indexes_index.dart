// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecondaryIndexesIndex {
  /// A list of defined column for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>> definedColumns;
  /// The resource ID. The value is `<instance_name>:<table_name>:<indexName>:<indexType>`.
  final pulumi.Input<String> id;
  /// The index name of the OTS Table which could not be changed.
  final pulumi.Input<String> indexName;
  /// The index type of the OTS Table which could not be changed.
  final pulumi.Input<String> indexType;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>> primaryKeys;
  /// The name of OTS table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetSecondaryIndexesIndex].
  /// [definedColumns] A list of defined column for index, referenced from Table's primary keys or predefined columns.
  /// [id] The resource ID. The value is `<instance_name>:<table_name>:<indexName>:<indexType>`.
  /// [indexName] The index name of the OTS Table which could not be changed.
  /// [indexType] The index type of the OTS Table which could not be changed.
  /// [instanceName] The name of OTS instance.
  /// [primaryKeys] A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  /// [tableName] The name of OTS table.
  GetSecondaryIndexesIndex({
    required this.definedColumns,
    required this.id,
    required this.indexName,
    required this.indexType,
    required this.instanceName,
    required this.primaryKeys,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definedColumns': definedColumns,
      'id': id,
      'indexName': indexName,
      'indexType': indexType,
      'instanceName': instanceName,
      'primaryKeys': primaryKeys,
      'tableName': tableName,
    };
  }

  factory GetSecondaryIndexesIndex.fromMap(Map<String, dynamic> map) {
    return GetSecondaryIndexesIndex(
      definedColumns: ((map['definedColumns'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      indexName: (map['indexName'] as String).input(),
      indexType: (map['indexType'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      primaryKeys: ((map['primaryKeys'] as List).cast<String>()).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_secondary_index_secondary_index_args_doc}
/// The set of arguments for SecondaryIndex.
/// {@endtemplate}
/// {@macro pulumi_ots_secondary_index_secondary_index_args_doc}
class SecondaryIndexArgs {
  /// A list of defined column for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>>? definedColumns;
  /// whether the index contains data that already exists in the data table. When include_base_data is set to true, it means that stock data is included.
  final pulumi.Input<bool> includeBaseData;
  /// The index name of the OTS Table. If changed, a new index would be created.
  final pulumi.Input<String> indexName;
  /// The index type of the OTS Table. If changed, a new index would be created, only `Global` or `Local` is allowed.
  final pulumi.Input<String> indexType;
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String> instanceName;
  /// A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>> primaryKeys;
  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String> tableName;

  /// Creates a new [SecondaryIndexArgs].
  /// [definedColumns] A list of defined column for index, referenced from Table's primary keys or predefined columns.
  /// [includeBaseData] whether the index contains data that already exists in the data table. When include_base_data is set to true, it means that stock data is included.
  /// [indexName] The index name of the OTS Table. If changed, a new index would be created.
  /// [indexType] The index type of the OTS Table. If changed, a new index would be created, only `Global` or `Local` is allowed.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [primaryKeys] A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  SecondaryIndexArgs({
    pulumi.Output<List<String>>? definedColumns,
    required pulumi.Output<bool> includeBaseData,
    required pulumi.Output<String> indexName,
    required pulumi.Output<String> indexType,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<List<String>> primaryKeys,
    required pulumi.Output<String> tableName,
  }) :
      definedColumns = pulumi.Input.asOptionalInput<List<String>>(definedColumns),
      includeBaseData = pulumi.Input.asInput<bool>(includeBaseData),
      indexName = pulumi.Input.asInput<String>(indexName),
      indexType = pulumi.Input.asInput<String>(indexType),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      primaryKeys = pulumi.Input.asInput<List<String>>(primaryKeys),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definedColumns': ?definedColumns,
      'includeBaseData': includeBaseData,
      'indexName': indexName,
      'indexType': indexType,
      'instanceName': instanceName,
      'primaryKeys': primaryKeys,
      'tableName': tableName,
    };
  }

  factory SecondaryIndexArgs.fromMap(Map<String, dynamic> map) {
    return SecondaryIndexArgs(
      definedColumns: map['definedColumns'] == null ? null : pulumi.Output.create<List<String>>((map['definedColumns'] as List).cast<String>()),
      includeBaseData: pulumi.Output.create<bool>(map['includeBaseData'] as bool),
      indexName: pulumi.Output.create<String>(map['indexName'] as String),
      indexType: pulumi.Output.create<String>(map['indexType'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      primaryKeys: pulumi.Output.create<List<String>>((map['primaryKeys'] as List).cast<String>()),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}


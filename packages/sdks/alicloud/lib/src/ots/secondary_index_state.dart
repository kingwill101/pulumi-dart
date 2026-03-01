// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecondaryIndex resources.
class SecondaryIndexState {
  /// A list of defined column for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>>? definedColumns;
  /// whether the index contains data that already exists in the data table. When include_base_data is set to true, it means that stock data is included.
  final pulumi.Input<bool>? includeBaseData;
  /// The index name of the OTS Table. If changed, a new index would be created.
  final pulumi.Input<String>? indexName;
  /// The index type of the OTS Table. If changed, a new index would be created, only `Global` or `Local` is allowed.
  final pulumi.Input<String>? indexType;
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String>? instanceName;
  /// A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  final pulumi.Input<List<String>>? primaryKeys;
  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String>? tableName;

  /// Creates a new [SecondaryIndexState].
  /// [definedColumns] A list of defined column for index, referenced from Table's primary keys or predefined columns.
  /// [includeBaseData] whether the index contains data that already exists in the data table. When include_base_data is set to true, it means that stock data is included.
  /// [indexName] The index name of the OTS Table. If changed, a new index would be created.
  /// [indexType] The index type of the OTS Table. If changed, a new index would be created, only `Global` or `Local` is allowed.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [primaryKeys] A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  SecondaryIndexState({
    pulumi.Output<List<String>>? definedColumns,
    pulumi.Output<bool>? includeBaseData,
    pulumi.Output<String>? indexName,
    pulumi.Output<String>? indexType,
    pulumi.Output<String>? instanceName,
    pulumi.Output<List<String>>? primaryKeys,
    pulumi.Output<String>? tableName,
  }) :
      definedColumns = pulumi.Input.asOptionalInput<List<String>>(definedColumns),
      includeBaseData = pulumi.Input.asOptionalInput<bool>(includeBaseData),
      indexName = pulumi.Input.asOptionalInput<String>(indexName),
      indexType = pulumi.Input.asOptionalInput<String>(indexType),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      primaryKeys = pulumi.Input.asOptionalInput<List<String>>(primaryKeys),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definedColumns': ?definedColumns,
      'includeBaseData': ?includeBaseData,
      'indexName': ?indexName,
      'indexType': ?indexType,
      'instanceName': ?instanceName,
      'primaryKeys': ?primaryKeys,
      'tableName': ?tableName,
    };
  }

  factory SecondaryIndexState.fromMap(Map<String, dynamic> map) {
    return SecondaryIndexState(
      definedColumns: map['definedColumns'] == null ? null : pulumi.Output.create<List<String>>((map['definedColumns'] as List).cast<String>()),
      includeBaseData: map['includeBaseData'] == null ? null : pulumi.Output.create<bool>(map['includeBaseData'] as bool),
      indexName: map['indexName'] == null ? null : pulumi.Output.create<String>(map['indexName'] as String),
      indexType: map['indexType'] == null ? null : pulumi.Output.create<String>(map['indexType'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      primaryKeys: map['primaryKeys'] == null ? null : pulumi.Output.create<List<String>>((map['primaryKeys'] as List).cast<String>()),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}


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
    this.definedColumns,
    this.includeBaseData,
    this.indexName,
    this.indexType,
    this.instanceName,
    this.primaryKeys,
    this.tableName,
  });

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
      definedColumns: (() {
        final guardedValue = map['definedColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeBaseData: (() {
        final guardedValue = map['includeBaseData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexType: (() {
        final guardedValue = map['indexType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryKeys: (() {
        final guardedValue = map['primaryKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

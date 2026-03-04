// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchIndexSchemaFieldSchema {
  /// Specifies the type of the analyzer that you want to use. If fieldType is set to Text, you can configure this parameter. Otherwise, the default analyzer type single-word tokenization is used.
  final pulumi.Input<String>? analyzer;

  /// Specifies whether to enable sorting and aggregation. Type: Boolean. Sorting can be enabled only for fields for which enable_sort_and_agg is set to true.
  final pulumi.Input<bool>? enableSortAndAgg;

  /// The name of the field that is used to sort data. only required if sorter_type is FieldSort.
  final pulumi.Input<String> fieldName;

  /// Specifies the type of the field. Valid values: Text, Long, Double, Boolean, Keyword, Date, GeoPoint, Nested.
  final pulumi.Input<String> fieldType;

  /// Specifies whether to enable indexing for the column. Type: Boolean.
  final pulumi.Input<bool>? index;

  /// Specifies whether the value is an array. Type: Boolean.
  final pulumi.Input<bool>? isArray;

  /// Specifies whether to store the value of the field in the search index. Type: Boolean. If you set store to true, you can read the value of the field from the search index without querying the data table. This improves query performance.
  final pulumi.Input<bool>? store;

  /// Creates a new [SearchIndexSchemaFieldSchema].
  /// [analyzer] Specifies the type of the analyzer that you want to use. If fieldType is set to Text, you can configure this parameter. Otherwise, the default analyzer type single-word tokenization is used.
  /// [enableSortAndAgg] Specifies whether to enable sorting and aggregation. Type: Boolean. Sorting can be enabled only for fields for which enable_sort_and_agg is set to true.
  /// [fieldName] The name of the field that is used to sort data. only required if sorter_type is FieldSort.
  /// [fieldType] Specifies the type of the field. Valid values: Text, Long, Double, Boolean, Keyword, Date, GeoPoint, Nested.
  /// [index] Specifies whether to enable indexing for the column. Type: Boolean.
  /// [isArray] Specifies whether the value is an array. Type: Boolean.
  /// [store] Specifies whether to store the value of the field in the search index. Type: Boolean. If you set store to true, you can read the value of the field from the search index without querying the data table. This improves query performance.
  SearchIndexSchemaFieldSchema({
    this.analyzer,
    this.enableSortAndAgg,
    required this.fieldName,
    required this.fieldType,
    this.index,
    this.isArray,
    this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzer': ?analyzer,
      'enableSortAndAgg': ?enableSortAndAgg,
      'fieldName': fieldName,
      'fieldType': fieldType,
      'index': ?index,
      'isArray': ?isArray,
      'store': ?store,
    };
  }

  factory SearchIndexSchemaFieldSchema.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchemaFieldSchema(
      analyzer: (() {
        final guardedValue = map['analyzer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableSortAndAgg: (() {
        final guardedValue = map['enableSortAndAgg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      fieldType: pulumi.Input.fromValue(map['fieldType'] as String),
      index: (() {
        final guardedValue = map['index'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isArray: (() {
        final guardedValue = map['isArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      store: (() {
        final guardedValue = map['store'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

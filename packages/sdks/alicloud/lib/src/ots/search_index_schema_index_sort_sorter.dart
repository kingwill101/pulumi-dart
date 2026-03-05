// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchIndexSchemaIndexSortSorter {
  /// The name of the field that is used to sort data. only required if sorter_type is FieldSort.
  final pulumi.Input<String>? fieldName;
  /// The sorting method that is used when the field contains multiple values. valid values: `Min`, `Max`, `Avg`. only required if sorter_type is FieldSort.
  final pulumi.Input<String>? mode;
  /// The sort order. Data can be sorted in ascending(`Asc`) or descending(`Desc`) order. Default value: `Asc`.
  final pulumi.Input<String>? order;
  /// Data is sorted by Which fields or keys. valid values: `PrimaryKeySort`, `FieldSort`.
  final pulumi.Input<String>? sorterType;

  /// Creates a new [SearchIndexSchemaIndexSortSorter].
  /// [fieldName] The name of the field that is used to sort data. only required if sorter_type is FieldSort.
  /// [mode] The sorting method that is used when the field contains multiple values. valid values: `Min`, `Max`, `Avg`. only required if sorter_type is FieldSort.
  /// [order] The sort order. Data can be sorted in ascending(`Asc`) or descending(`Desc`) order. Default value: `Asc`.
  /// [sorterType] Data is sorted by Which fields or keys. valid values: `PrimaryKeySort`, `FieldSort`.
  SearchIndexSchemaIndexSortSorter({
    this.fieldName,
    this.mode,
    this.order,
    this.sorterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': ?fieldName,
      'mode': ?mode,
      'order': ?order,
      'sorterType': ?sorterType,
    };
  }

  factory SearchIndexSchemaIndexSortSorter.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchemaIndexSortSorter(
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sorterType: (() { final guardedValue = map['sorterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


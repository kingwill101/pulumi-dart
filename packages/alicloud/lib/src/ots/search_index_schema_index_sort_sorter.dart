// ignore_for_file: unused_element, unnecessary_cast


class SearchIndexSchemaIndexSortSorter {
  /// The name of the field that is used to sort data. only required if sorter_type is FieldSort.
  final String? fieldName;
  /// The sorting method that is used when the field contains multiple values. valid values: `Min`, `Max`, `Avg`. only required if sorter_type is FieldSort.
  final String? mode;
  /// The sort order. Data can be sorted in ascending(`Asc`) or descending(`Desc`) order. Default value: `Asc`.
  final String? order;
  /// Data is sorted by Which fields or keys. valid values: `PrimaryKeySort`, `FieldSort`.
  final String? sorterType;

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
      fieldName: map['fieldName'] == null ? null : map['fieldName'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      sorterType: map['sorterType'] == null ? null : map['sorterType'] as String,
    );
  }
}


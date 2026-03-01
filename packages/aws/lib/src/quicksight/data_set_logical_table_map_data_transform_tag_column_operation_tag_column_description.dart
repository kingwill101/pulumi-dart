// ignore_for_file: unused_element, unnecessary_cast


class DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription {
  /// The text of a description for a column.
  final String? text;

  /// Creates a new [DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription].
  /// [text] The text of a description for a column.
  DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}


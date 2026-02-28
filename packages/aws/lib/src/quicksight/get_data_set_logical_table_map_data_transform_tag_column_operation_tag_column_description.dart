// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription {
  final String text;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription].
  /// [text] Required.
  GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription(
      text: map['text'] as String,
    );
  }
}

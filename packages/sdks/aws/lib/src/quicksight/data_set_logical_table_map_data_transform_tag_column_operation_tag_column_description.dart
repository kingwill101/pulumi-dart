// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription {
  /// The text of a description for a column.
  final pulumi.Input<String>? text;

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
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}


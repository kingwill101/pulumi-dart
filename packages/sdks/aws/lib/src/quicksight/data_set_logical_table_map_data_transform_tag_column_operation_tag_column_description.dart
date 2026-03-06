// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription {
  /// The text of a description for a column.
  final pulumi.Input<String>? text;

  /// Creates a new [DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription].
  /// [text] The text of a description for a column.
  const DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


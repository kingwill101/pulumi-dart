// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription {
  final pulumi.Input<String> text;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription].
  /// [text] Required.
  GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

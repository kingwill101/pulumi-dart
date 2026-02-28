// ignore_for_file: unused_element, unnecessary_cast

import 'transformation_rule_action_op.dart';

/// TransformationRuleAction defines a TransformationRule action based on the JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
class TransformationRuleAction {
  /// Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  final String? fromPath;
  /// op specifies the operation to perform.
  final TransformationRuleActionOp op;
  /// Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  final String? path;
  /// Optional. A string that specifies the desired value in string format to use for transformation.
  final String? value;

  /// Creates a new [TransformationRuleAction].
  /// [fromPath] Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  /// [op] op specifies the operation to perform.
  /// [path] Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  /// [value] Optional. A string that specifies the desired value in string format to use for transformation.
  TransformationRuleAction({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPath': ?fromPath,
      'op': op.value,
      'path': ?path,
      'value': ?value,
    };
  }

  factory TransformationRuleAction.fromMap(Map<String, dynamic> map) {
    return TransformationRuleAction(
      fromPath: map['fromPath'] == null ? null : map['fromPath'] as String,
      op: TransformationRuleActionOp.fromValue(map['op'] as String),
      path: map['path'] == null ? null : map['path'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


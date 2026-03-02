// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow BuiltIn Transformation filter properties
class DataflowBuiltInTransformationFilterResponse {
  /// A user provided optional description of the filter.
  final pulumi.Input<String>? description;
  /// Condition to filter data. Can reference input fields with {n} where n is the index of the input field starting from 1. Example: $1 < 0 || $1 > $2 (Assuming inputs section $1 and $2 are provided)
  final pulumi.Input<String> expression;
  /// List of fields for filtering in JSON path expression.
  final pulumi.Input<List<String>> inputs;
  /// The type of dataflow operation.
  final pulumi.Input<String>? type;

  /// Creates a new [DataflowBuiltInTransformationFilterResponse].
  /// [description] A user provided optional description of the filter.
  /// [expression] Condition to filter data. Can reference input fields with {n} where n is the index of the input field starting from 1. Example: $1 < 0 || $1 > $2 (Assuming inputs section $1 and $2 are provided)
  /// [inputs] List of fields for filtering in JSON path expression.
  /// [type] The type of dataflow operation.
  DataflowBuiltInTransformationFilterResponse({
    this.description,
    required this.expression,
    required this.inputs,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'inputs': inputs,
      'type': ?type,
    };
  }

  factory DataflowBuiltInTransformationFilterResponse.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationFilterResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expression: (map['expression'] as String).input(),
      inputs: ((map['inputs'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


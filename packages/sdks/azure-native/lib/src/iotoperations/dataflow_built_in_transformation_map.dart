// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow BuiltIn Transformation map properties
class DataflowBuiltInTransformationMap {
  /// A user provided optional description of the mapping function.
  final pulumi.Input<String>? description;

  /// Modify the inputs field(s) to the final output field. Example: $1 * 2.2 (Assuming inputs section $1 is provided)
  final pulumi.Input<String>? expression;

  /// List of fields for mapping in JSON path expression.
  final pulumi.Input<List<String>> inputs;

  /// Where and how the input fields to be organized in the output record.
  final pulumi.Input<String> output;

  /// Type of transformation.
  final pulumi.Input<String>? type;

  /// Creates a new [DataflowBuiltInTransformationMap].
  /// [description] A user provided optional description of the mapping function.
  /// [expression] Modify the inputs field(s) to the final output field. Example: $1 * 2.2 (Assuming inputs section $1 is provided)
  /// [inputs] List of fields for mapping in JSON path expression.
  /// [output] Where and how the input fields to be organized in the output record.
  /// [type] Type of transformation.
  DataflowBuiltInTransformationMap({
    this.description,
    this.expression,
    required this.inputs,
    required this.output,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'inputs': inputs,
      'output': output,
      'type': ?type,
    };
  }

  factory DataflowBuiltInTransformationMap.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationMap(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputs: pulumi.Input.fromValue((map['inputs'] as List).cast<String>()),
      output: pulumi.Input.fromValue(map['output'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

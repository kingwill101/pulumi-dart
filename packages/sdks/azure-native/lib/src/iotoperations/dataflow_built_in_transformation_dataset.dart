// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow BuiltIn Transformation dataset properties
class DataflowBuiltInTransformationDataset {
  /// A user provided optional description of the dataset.
  final pulumi.Input<String>? description;
  /// Condition to enrich data from Broker State Store. Example: $1 &lt; 0 || $1 &gt; $2 (Assuming inputs section $1 and $2 are provided)
  final pulumi.Input<String>? expression;
  /// List of fields for enriching from the Broker State Store.
  final pulumi.Input<List<String>> inputs;
  /// The key of the dataset.
  final pulumi.Input<String> key;
  /// The reference to the schema that describes the dataset. Allowed: JSON Schema/draft-7.
  final pulumi.Input<String>? schemaRef;

  /// Creates a new [DataflowBuiltInTransformationDataset].
  /// [description] A user provided optional description of the dataset.
  /// [expression] Condition to enrich data from Broker State Store. Example: $1 &lt; 0 || $1 &gt; $2 (Assuming inputs section $1 and $2 are provided)
  /// [inputs] List of fields for enriching from the Broker State Store.
  /// [key] The key of the dataset.
  /// [schemaRef] The reference to the schema that describes the dataset. Allowed: JSON Schema/draft-7.
  const DataflowBuiltInTransformationDataset({
    this.description,
    this.expression,
    required this.inputs,
    required this.key,
    this.schemaRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'inputs': inputs,
      'key': key,
      'schemaRef': ?schemaRef,
    };
  }

  factory DataflowBuiltInTransformationDataset.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationDataset(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: pulumi.Input.fromValue((map['inputs'] as List).cast<String>()),
      key: pulumi.Input.fromValue(map['key'] as String),
      schemaRef: (() { final guardedValue = map['schemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

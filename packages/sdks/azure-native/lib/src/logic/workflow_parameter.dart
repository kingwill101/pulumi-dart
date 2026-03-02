// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The workflow parameters.
class WorkflowParameter {
  /// The description.
  final pulumi.Input<String>? description;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The type.
  final pulumi.Input<String>? type;
  /// The value.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [WorkflowParameter].
  /// [description] The description.
  /// [metadata] The metadata.
  /// [type] The type.
  /// [value] The value.
  WorkflowParameter({
    this.description,
    this.metadata,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'metadata': ?metadata,
      'type': ?type,
      'value': ?value,
    };
  }

  factory WorkflowParameter.fromMap(Map<String, dynamic> map) {
    return WorkflowParameter(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value']).input(),
    );
  }
}


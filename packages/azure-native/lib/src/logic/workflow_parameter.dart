// ignore_for_file: unused_element, unnecessary_cast


/// The workflow parameters.
class WorkflowParameter {
  /// The description.
  final String? description;
  /// The metadata.
  final dynamic metadata;
  /// The type.
  final String? type;
  /// The value.
  final dynamic value;

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
      description: map['description'] == null ? null : map['description'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}


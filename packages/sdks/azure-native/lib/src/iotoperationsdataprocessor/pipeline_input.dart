// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stage configuration for Pipeline input stage.
class PipelineInput {
  /// Description for stage.
  final pulumi.Input<String>? description;
  /// Next stage in the pipeline.
  final pulumi.Input<List<String>> next;
  /// ARM resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PipelineInput].
  /// [description] Description for stage.
  /// [next] Next stage in the pipeline.
  /// [type] ARM resource type.
  PipelineInput({
    this.description,
    required this.next,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'next': next,
      'type': type,
    };
  }

  factory PipelineInput.fromMap(Map<String, dynamic> map) {
    return PipelineInput(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      next: ((map['next'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}


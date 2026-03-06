// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stage configuration for Pipeline input stage.
class PipelineInputResponse {
  /// Description for stage.
  final pulumi.Input<String>? description;
  /// Next stage in the pipeline.
  final pulumi.Input<List<String>> next;
  /// ARM resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PipelineInputResponse].
  /// [description] Description for stage.
  /// [next] Next stage in the pipeline.
  /// [type] ARM resource type.
  const PipelineInputResponse({
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

  factory PipelineInputResponse.fromMap(Map<String, dynamic> map) {
    return PipelineInputResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      next: pulumi.Input.fromValue((map['next'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


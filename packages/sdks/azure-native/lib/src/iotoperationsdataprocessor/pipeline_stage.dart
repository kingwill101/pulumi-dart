// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stage configurations for all Pipeline processing and output stages.
class PipelineStage {
  /// Description for stage.
  final pulumi.Input<String>? description;
  /// Next stage in the pipeline. Not required if output stage.
  final pulumi.Input<List<String>>? next;
  /// ARM resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PipelineStage].
  /// [description] Description for stage.
  /// [next] Next stage in the pipeline. Not required if output stage.
  /// [type] ARM resource type.
  PipelineStage({
    this.description,
    this.next,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'next': ?next,
      'type': type,
    };
  }

  factory PipelineStage.fromMap(Map<String, dynamic> map) {
    return PipelineStage(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      next: (() { final guardedValue = map['next']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


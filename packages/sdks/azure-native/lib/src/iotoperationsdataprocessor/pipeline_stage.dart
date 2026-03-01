// ignore_for_file: unused_element, unnecessary_cast


/// Stage configurations for all Pipeline processing and output stages.
class PipelineStage {
  /// Description for stage.
  final String? description;
  /// Next stage in the pipeline. Not required if output stage.
  final List<String>? next;
  /// ARM resource type.
  final String type;

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
      description: map['description'] == null ? null : map['description'] as String,
      next: map['next'] == null ? null : (map['next'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}


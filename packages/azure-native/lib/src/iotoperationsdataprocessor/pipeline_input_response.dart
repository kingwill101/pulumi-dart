// ignore_for_file: unused_element, unnecessary_cast


/// Stage configuration for Pipeline input stage.
class PipelineInputResponse {
  /// Description for stage.
  final String? description;
  /// Next stage in the pipeline.
  final List<String> next;
  /// ARM resource type.
  final String type;

  /// Creates a new [PipelineInputResponse].
  /// [description] Description for stage.
  /// [next] Next stage in the pipeline.
  /// [type] ARM resource type.
  PipelineInputResponse({
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
      description: map['description'] == null ? null : map['description'] as String,
      next: (map['next'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}


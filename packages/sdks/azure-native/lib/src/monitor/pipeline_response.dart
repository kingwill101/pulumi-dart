// ignore_for_file: unused_element, unnecessary_cast


/// Pipeline Info.
class PipelineResponse {
  /// Reference to exporters configured for the pipeline.
  final List<String> exporters;
  /// Name of the pipeline.
  final String name;
  /// Reference to processors configured for the pipeline.
  final List<String>? processors;
  /// Reference to receivers configured for the pipeline.
  final List<String> receivers;
  /// The type of pipeline
  final String type;

  /// Creates a new [PipelineResponse].
  /// [exporters] Reference to exporters configured for the pipeline.
  /// [name] Name of the pipeline.
  /// [processors] Reference to processors configured for the pipeline.
  /// [receivers] Reference to receivers configured for the pipeline.
  /// [type] The type of pipeline
  PipelineResponse({
    required this.exporters,
    required this.name,
    this.processors,
    required this.receivers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exporters': exporters,
      'name': name,
      'processors': ?processors,
      'receivers': receivers,
      'type': type,
    };
  }

  factory PipelineResponse.fromMap(Map<String, dynamic> map) {
    return PipelineResponse(
      exporters: (map['exporters'] as List).cast<String>(),
      name: map['name'] as String,
      processors: map['processors'] == null ? null : (map['processors'] as List).cast<String>(),
      receivers: (map['receivers'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}


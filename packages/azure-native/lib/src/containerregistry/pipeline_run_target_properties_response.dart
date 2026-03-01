// ignore_for_file: unused_element, unnecessary_cast


class PipelineRunTargetPropertiesResponse {
  /// The name of the target.
  final String? name;
  /// The type of the target.
  final String? type;

  /// Creates a new [PipelineRunTargetPropertiesResponse].
  /// [name] The name of the target.
  /// [type] The type of the target.
  PipelineRunTargetPropertiesResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PipelineRunTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineRunTargetPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


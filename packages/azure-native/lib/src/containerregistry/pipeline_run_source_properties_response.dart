// ignore_for_file: unused_element, unnecessary_cast


class PipelineRunSourcePropertiesResponse {
  /// The name of the source.
  final String? name;
  /// The type of the source.
  final String? type;

  /// Creates a new [PipelineRunSourcePropertiesResponse].
  /// [name] The name of the source.
  /// [type] The type of the source.
  PipelineRunSourcePropertiesResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PipelineRunSourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineRunSourcePropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


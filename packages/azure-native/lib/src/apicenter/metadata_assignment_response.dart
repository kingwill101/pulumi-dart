// ignore_for_file: unused_element, unnecessary_cast


/// Assignment metadata
class MetadataAssignmentResponse {
  /// Deprecated assignment
  final bool? deprecated;
  /// The entities this metadata schema component gets applied to.
  final String? entity;
  /// Required assignment
  final bool? required;

  /// Creates a new [MetadataAssignmentResponse].
  /// [deprecated] Deprecated assignment
  /// [entity] The entities this metadata schema component gets applied to.
  /// [required] Required assignment
  MetadataAssignmentResponse({
    this.deprecated,
    this.entity,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecated': ?deprecated,
      'entity': ?entity,
      'required': ?required,
    };
  }

  factory MetadataAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return MetadataAssignmentResponse(
      deprecated: map['deprecated'] == null ? null : map['deprecated'] as bool,
      entity: map['entity'] == null ? null : map['entity'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}


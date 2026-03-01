// ignore_for_file: unused_element, unnecessary_cast


/// Assignment metadata
class MetadataAssignment {
  /// Deprecated assignment
  final bool? deprecated;
  /// The entities this metadata schema component gets applied to.
  final String? entity;
  /// Required assignment
  final bool? required;

  /// Creates a new [MetadataAssignment].
  /// [deprecated] Deprecated assignment
  /// [entity] The entities this metadata schema component gets applied to.
  /// [required] Required assignment
  MetadataAssignment({
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

  factory MetadataAssignment.fromMap(Map<String, dynamic> map) {
    return MetadataAssignment(
      deprecated: map['deprecated'] == null ? null : map['deprecated'] as bool,
      entity: map['entity'] == null ? null : map['entity'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}


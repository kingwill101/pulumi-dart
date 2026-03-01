// ignore_for_file: unused_element, unnecessary_cast


/// Pipeline reference type.
class PipelineReference {
  /// Reference name.
  final String? name;
  /// Reference pipeline name.
  final String referenceName;
  /// Pipeline reference type.
  final String type;

  /// Creates a new [PipelineReference].
  /// [name] Reference name.
  /// [referenceName] Reference pipeline name.
  /// [type] Pipeline reference type.
  PipelineReference({
    this.name,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory PipelineReference.fromMap(Map<String, dynamic> map) {
    return PipelineReference(
      name: map['name'] == null ? null : map['name'] as String,
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}


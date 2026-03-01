// ignore_for_file: unused_element, unnecessary_cast


/// Integration runtime reference type.
class IntegrationRuntimeReference {
  /// Arguments for integration runtime.
  final Map<String, dynamic>? parameters;
  /// Reference integration runtime name.
  final String referenceName;
  /// Type of integration runtime.
  final String type;

  /// Creates a new [IntegrationRuntimeReference].
  /// [parameters] Arguments for integration runtime.
  /// [referenceName] Reference integration runtime name.
  /// [type] Type of integration runtime.
  IntegrationRuntimeReference({
    this.parameters,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory IntegrationRuntimeReference.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeReference(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Model that represents the Capability properties model.
class CapabilityPropertiesResponse {
  /// Localized string of the description.
  final String description;
  /// URL to retrieve JSON schema of the Capability parameters.
  final String parametersSchema;
  /// String of the Publisher that this Capability extends.
  final String publisher;
  /// String of the Target Type that this Capability extends.
  final String targetType;
  /// String of the URN for this Capability Type.
  final String urn;

  /// Creates a new [CapabilityPropertiesResponse].
  /// [description] Localized string of the description.
  /// [parametersSchema] URL to retrieve JSON schema of the Capability parameters.
  /// [publisher] String of the Publisher that this Capability extends.
  /// [targetType] String of the Target Type that this Capability extends.
  /// [urn] String of the URN for this Capability Type.
  CapabilityPropertiesResponse({
    required this.description,
    required this.parametersSchema,
    required this.publisher,
    required this.targetType,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'parametersSchema': parametersSchema,
      'publisher': publisher,
      'targetType': targetType,
      'urn': urn,
    };
  }

  factory CapabilityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityPropertiesResponse(
      description: map['description'] as String,
      parametersSchema: map['parametersSchema'] as String,
      publisher: map['publisher'] as String,
      targetType: map['targetType'] as String,
      urn: map['urn'] as String,
    );
  }
}


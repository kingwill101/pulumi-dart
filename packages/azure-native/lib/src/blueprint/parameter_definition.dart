// ignore_for_file: unused_element, unnecessary_cast


/// Represent a parameter with constrains and metadata.
class ParameterDefinition {
  /// Array of allowed values for this parameter.
  final List<dynamic>? allowedValues;
  /// Default Value for this parameter.
  final dynamic defaultValue;
  /// Description of this parameter/resourceGroup.
  final String? description;
  /// DisplayName of this parameter/resourceGroup.
  final String? displayName;
  /// StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  final String? strongType;
  /// Allowed data types for Resource Manager template parameters.
  final String type;

  /// Creates a new [ParameterDefinition].
  /// [allowedValues] Array of allowed values for this parameter.
  /// [defaultValue] Default Value for this parameter.
  /// [description] Description of this parameter/resourceGroup.
  /// [displayName] DisplayName of this parameter/resourceGroup.
  /// [strongType] StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  /// [type] Allowed data types for Resource Manager template parameters.
  ParameterDefinition({
    this.allowedValues,
    this.defaultValue,
    this.description,
    this.displayName,
    this.strongType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'displayName': ?displayName,
      'strongType': ?strongType,
      'type': type,
    };
  }

  factory ParameterDefinition.fromMap(Map<String, dynamic> map) {
    return ParameterDefinition(
      allowedValues: map['allowedValues'] == null ? null : (map['allowedValues'] as List).cast<dynamic>(),
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      strongType: map['strongType'] == null ? null : map['strongType'] as String,
      type: map['type'] as String,
    );
  }
}


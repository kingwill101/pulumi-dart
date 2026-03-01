// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for a Link's property mapping.
class TypePropertiesMappingResponse {
  /// Link type.
  final String? linkType;
  /// Property name on the source Entity Type.
  final String sourcePropertyName;
  /// Property name on the target Entity Type.
  final String targetPropertyName;

  /// Creates a new [TypePropertiesMappingResponse].
  /// [linkType] Link type.
  /// [sourcePropertyName] Property name on the source Entity Type.
  /// [targetPropertyName] Property name on the target Entity Type.
  TypePropertiesMappingResponse({
    this.linkType,
    required this.sourcePropertyName,
    required this.targetPropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkType': ?linkType,
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory TypePropertiesMappingResponse.fromMap(Map<String, dynamic> map) {
    return TypePropertiesMappingResponse(
      linkType: map['linkType'] == null ? null : map['linkType'] as String,
      sourcePropertyName: map['sourcePropertyName'] as String,
      targetPropertyName: map['targetPropertyName'] as String,
    );
  }
}


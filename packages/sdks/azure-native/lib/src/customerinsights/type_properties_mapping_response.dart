// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Link's property mapping.
class TypePropertiesMappingResponse {
  /// Link type.
  final pulumi.Input<String>? linkType;
  /// Property name on the source Entity Type.
  final pulumi.Input<String> sourcePropertyName;
  /// Property name on the target Entity Type.
  final pulumi.Input<String> targetPropertyName;

  /// Creates a new [TypePropertiesMappingResponse].
  /// [linkType] Link type.
  /// [sourcePropertyName] Property name on the source Entity Type.
  /// [targetPropertyName] Property name on the target Entity Type.
  const TypePropertiesMappingResponse({
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
      linkType: (() { final guardedValue = map['linkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePropertyName: pulumi.Input.fromValue(map['sourcePropertyName'] as String),
      targetPropertyName: pulumi.Input.fromValue(map['targetPropertyName'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'link_types.dart';

/// Metadata for a Link's property mapping.
class TypePropertiesMapping {
  /// Link type.
  final LinkTypes? linkType;
  /// Property name on the source Entity Type.
  final String sourcePropertyName;
  /// Property name on the target Entity Type.
  final String targetPropertyName;

  /// Creates a new [TypePropertiesMapping].
  /// [linkType] Link type.
  /// [sourcePropertyName] Property name on the source Entity Type.
  /// [targetPropertyName] Property name on the target Entity Type.
  TypePropertiesMapping({
    this.linkType,
    required this.sourcePropertyName,
    required this.targetPropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkType': ?linkType == null ? null : linkType!.value,
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory TypePropertiesMapping.fromMap(Map<String, dynamic> map) {
    return TypePropertiesMapping(
      linkType: map['linkType'] == null ? null : LinkTypes.fromValue(map['linkType'] as String),
      sourcePropertyName: map['sourcePropertyName'] as String,
      targetPropertyName: map['targetPropertyName'] as String,
    );
  }
}


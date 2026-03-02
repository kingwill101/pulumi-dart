// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_types.dart';

/// Metadata for a Link's property mapping.
class TypePropertiesMapping {
  /// Link type.
  final pulumi.Input<LinkTypes>? linkType;
  /// Property name on the source Entity Type.
  final pulumi.Input<String> sourcePropertyName;
  /// Property name on the target Entity Type.
  final pulumi.Input<String> targetPropertyName;

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
      'linkType': ?pulumi.Input.mapOptionalInputValue<LinkTypes, String>(linkType, (value) => value.value),
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory TypePropertiesMapping.fromMap(Map<String, dynamic> map) {
    return TypePropertiesMapping(
      linkType: map['linkType'] == null ? null : (LinkTypes.fromValue(map['linkType']! as String)).input(),
      sourcePropertyName: (map['sourcePropertyName'] as String).input(),
      targetPropertyName: (map['targetPropertyName'] as String).input(),
    );
  }
}


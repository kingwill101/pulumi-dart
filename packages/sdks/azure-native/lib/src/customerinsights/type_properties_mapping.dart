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
      'linkType': ?pulumi.Input.mapOptionalInputValue<LinkTypes, String>(
        linkType,
        (value) => value.wireValue,
      ),
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory TypePropertiesMapping.fromMap(Map<String, dynamic> map) {
    return TypePropertiesMapping(
      linkType: (() {
        final guardedValue = map['linkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkTypes.fromValue(guardedValue as String),
        );
      })(),
      sourcePropertyName: pulumi.Input.fromValue(
        map['sourcePropertyName'] as String,
      ),
      targetPropertyName: pulumi.Input.fromValue(
        map['targetPropertyName'] as String,
      ),
    );
  }
}

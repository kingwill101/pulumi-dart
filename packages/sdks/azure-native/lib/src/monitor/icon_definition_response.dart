// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Visual icon definition of an entity
class IconDefinitionResponse {
  /// Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  final pulumi.Input<String?>? customData;
  /// Name of the built-in icon, or 'Custom' to use customData
  final pulumi.Input<String> iconName;

  /// Creates a new [IconDefinitionResponse].
  /// [customData] Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  /// [iconName] Name of the built-in icon, or 'Custom' to use customData
  const IconDefinitionResponse({
    this.customData,
    required this.iconName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customData': ?customData,
      'iconName': iconName,
    };
  }

  factory IconDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return IconDefinitionResponse(
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconName: pulumi.Input.fromValue(map['iconName'] as String),
    );
  }
}

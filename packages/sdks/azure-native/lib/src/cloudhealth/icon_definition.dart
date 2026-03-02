// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Visual icon definition of an entity
class IconDefinition {
  /// Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  final pulumi.Input<String>? customData;
  /// Name of the built-in icon, or 'Custom' to use customData
  final pulumi.Input<String> iconName;

  /// Creates a new [IconDefinition].
  /// [customData] Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  /// [iconName] Name of the built-in icon, or 'Custom' to use customData
  IconDefinition({
    this.customData,
    required this.iconName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customData': ?customData,
      'iconName': iconName,
    };
  }

  factory IconDefinition.fromMap(Map<String, dynamic> map) {
    return IconDefinition(
      customData: map['customData'] == null ? null : (map['customData']! as String).input(),
      iconName: (map['iconName'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Visual icon definition of an entity
class IconDefinitionResponse {
  /// Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  final String? customData;
  /// Name of the built-in icon, or 'Custom' to use customData
  final String iconName;

  /// Creates a new [IconDefinitionResponse].
  /// [customData] Custom data. Base64-encoded SVG data. If set, this overrides the built-in icon.
  /// [iconName] Name of the built-in icon, or 'Custom' to use customData
  IconDefinitionResponse({
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
      customData: map['customData'] == null ? null : map['customData'] as String,
      iconName: map['iconName'] as String,
    );
  }
}


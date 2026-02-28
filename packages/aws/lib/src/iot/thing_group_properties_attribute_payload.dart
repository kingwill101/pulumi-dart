// ignore_for_file: unused_element, unnecessary_cast

class ThingGroupPropertiesAttributePayload {
  /// Key-value map.
  final Map<String, String>? attributes;

  /// Creates a new [ThingGroupPropertiesAttributePayload].
  /// [attributes] Key-value map.
  ThingGroupPropertiesAttributePayload({
    this.attributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    return map;
  }

  factory ThingGroupPropertiesAttributePayload.fromMap(
      Map<String, dynamic> map) {
    return ThingGroupPropertiesAttributePayload(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
    );
  }
}

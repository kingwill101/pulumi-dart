// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThingGroupPropertiesAttributePayload {
  /// Key-value map.
  final pulumi.Input<Map<String, String>>? attributes;

  /// Creates a new [ThingGroupPropertiesAttributePayload].
  /// [attributes] Key-value map.
  const ThingGroupPropertiesAttributePayload({
    this.attributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
    };
  }

  factory ThingGroupPropertiesAttributePayload.fromMap(Map<String, dynamic> map) {
    return ThingGroupPropertiesAttributePayload(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_properties_attribute_payload.dart';

class ThingGroupProperties {
  /// The Thing Group attributes. Defined below.
  final pulumi.Input<ThingGroupPropertiesAttributePayload>? attributePayload;
  /// A description of the Thing Group.
  final pulumi.Input<String>? description;

  /// Creates a new [ThingGroupProperties].
  /// [attributePayload] The Thing Group attributes. Defined below.
  /// [description] A description of the Thing Group.
  const ThingGroupProperties({
    this.attributePayload,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributePayload': ?pulumi.Input.mapOptionalInputValue<ThingGroupPropertiesAttributePayload, Map<String, dynamic>>(attributePayload, (value) => value.toMap()),
      'description': ?description,
    };
  }

  factory ThingGroupProperties.fromMap(Map<String, dynamic> map) {
    return ThingGroupProperties(
      attributePayload: (() { final guardedValue = map['attributePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThingGroupPropertiesAttributePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

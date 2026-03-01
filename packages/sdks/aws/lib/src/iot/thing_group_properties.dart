// ignore_for_file: unused_element, unnecessary_cast

import 'thing_group_properties_attribute_payload.dart';

class ThingGroupProperties {
  /// The Thing Group attributes. Defined below.
  final ThingGroupPropertiesAttributePayload? attributePayload;
  /// A description of the Thing Group.
  final String? description;

  /// Creates a new [ThingGroupProperties].
  /// [attributePayload] The Thing Group attributes. Defined below.
  /// [description] A description of the Thing Group.
  ThingGroupProperties({
    this.attributePayload,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributePayload': ?attributePayload == null ? null : attributePayload!.toMap(),
      'description': ?description,
    };
  }

  factory ThingGroupProperties.fromMap(Map<String, dynamic> map) {
    return ThingGroupProperties(
      attributePayload: map['attributePayload'] == null ? null : ThingGroupPropertiesAttributePayload.fromMap((map['attributePayload'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}


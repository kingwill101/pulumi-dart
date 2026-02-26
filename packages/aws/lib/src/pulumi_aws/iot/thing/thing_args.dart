// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Thing.
class ThingArgs {
  /// Map of attributes of the thing.
  final Input<Map<String, String>>? attributes;

  /// The name of the thing.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The thing type name.
  final Input<String>? thingTypeName;

  ThingArgs({
    this.attributes,
    this.name,
    this.region,
    this.thingTypeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final thingTypeNameValue = thingTypeName;
    if (thingTypeNameValue != null) {
      map['thingTypeName'] = thingTypeNameValue;
    }
    return map;
  }

  factory ThingArgs.fromMap(Map<String, dynamic> map) {
    return ThingArgs(
      attributes: Input.asOptionalInput<Map<String, String>>(map['attributes']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      thingTypeName: Input.asOptionalInput<String>(map['thingTypeName']),
    );
  }
}

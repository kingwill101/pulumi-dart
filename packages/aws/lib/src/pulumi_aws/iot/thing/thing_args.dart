// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Thing.
class ThingArgs {
  /// Map of attributes of the thing.
  final pulumi.Input<Map<String, String>>? attributes;

  /// The name of the thing.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The thing type name.
  final pulumi.Input<String>? thingTypeName;

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
      attributes:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['attributes']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      thingTypeName: pulumi.Input.asOptionalInput<String>(map['thingTypeName']),
    );
  }
}

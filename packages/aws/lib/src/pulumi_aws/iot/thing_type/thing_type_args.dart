// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../thing_type_properties/thing_type_properties.dart';

/// The set of arguments for ThingType.
class ThingTypeArgs {
  /// Whether the thing type is deprecated. If true, no new things could be associated with this type.
  final pulumi.Input<bool>? deprecated;

  /// The name of the thing type.
  final pulumi.Input<String>? name;

  /// , Configuration block that can contain the following properties of the thing type:
  final pulumi.Input<ThingTypeProperties>? properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  ThingTypeArgs({
    this.deprecated,
    this.name,
    this.properties,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deprecatedValue = deprecated;
    if (deprecatedValue != null) {
      map['deprecated'] = deprecatedValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          ThingTypeProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ThingTypeArgs.fromMap(Map<String, dynamic> map) {
    return ThingTypeArgs(
      deprecated: pulumi.Input.asOptionalInput<bool>(map['deprecated']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      properties:
          pulumi.Input.asOptionalInput<ThingTypeProperties>(map['properties']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

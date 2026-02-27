// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../thing_group_properties/thing_group_properties.dart';

/// The set of arguments for ThingGroup.
class ThingGroupArgs {
  /// The name of the Thing Group.
  final pulumi.Input<String>? name;

  /// The name of the parent Thing Group.
  final pulumi.Input<String>? parentGroupName;

  /// The Thing Group properties. Defined below.
  final pulumi.Input<ThingGroupProperties>? properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  ThingGroupArgs({
    this.name,
    this.parentGroupName,
    this.properties,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentGroupNameValue = parentGroupName;
    if (parentGroupNameValue != null) {
      map['parentGroupName'] = parentGroupNameValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          ThingGroupProperties,
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

  factory ThingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ThingGroupArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentGroupName:
          pulumi.Input.asOptionalInput<String>(map['parentGroupName']),
      properties:
          pulumi.Input.asOptionalInput<ThingGroupProperties>(map['properties']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

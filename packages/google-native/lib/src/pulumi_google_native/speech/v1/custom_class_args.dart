// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'class_item.dart';

/// The set of arguments for CustomClass.
class CustomClassArgs {
  /// The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final pulumi.Input<String> customClassId;

  /// A collection of class items.
  final pulumi.Input<List<ClassItem>>? items;
  final pulumi.Input<String>? location;

  /// The resource name of the custom class.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  CustomClassArgs({
    required this.customClassId,
    this.items,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customClassId'] = customClassId;
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.mapOptionalInputValue<List<ClassItem>,
              List<Map<String, dynamic>>>(
          itemsValue,
          (value) => pulumi.Input.encodeList<ClassItem, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CustomClassArgs.fromMap(Map<String, dynamic> map) {
    return CustomClassArgs(
      customClassId: pulumi.Input.asInput<String>(map['customClassId']),
      items: pulumi.Input.asOptionalInput<List<ClassItem>>(map['items']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

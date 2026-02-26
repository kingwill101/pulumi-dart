// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'class_item.dart';

/// The set of arguments for CustomClass.
class CustomClassArgs {
  /// The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final Input<String> customClassId;

  /// A collection of class items.
  final Input<List<ClassItem>>? items;
  final Input<String>? location;

  /// The resource name of the custom class.
  final Input<String>? name;
  final Input<String>? project;

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
      map['items'] = Input.mapOptionalInputValue<List<ClassItem>,
              List<Map<String, dynamic>>>(
          itemsValue,
          (value) => Input.encodeList<ClassItem, Map<String, dynamic>>(
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
      customClassId: Input.asInput<String>(map['customClassId']),
      items: Input.asOptionalInput<List<ClassItem>>(map['items']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

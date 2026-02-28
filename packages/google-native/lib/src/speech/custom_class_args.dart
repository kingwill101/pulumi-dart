// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'class_item.dart';

/// {@template pulumi_speech_v1_custom_class_args_doc}
/// The set of arguments for CustomClass.
/// {@endtemplate}
/// {@macro pulumi_speech_v1_custom_class_args_doc}
class CustomClassArgs {
  /// The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final pulumi.Input<String> customClassId;

  /// A collection of class items.
  final pulumi.Input<List<ClassItem>>? items;
  final pulumi.Input<String>? location;

  /// The resource name of the custom class.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomClassArgs].
  /// [customClassId] The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  /// [items] A collection of class items.
  /// [location] Optional.
  /// [name] The resource name of the custom class.
  /// [project] Optional.
  CustomClassArgs({
    required String customClassId,
    List<ClassItem>? items,
    String? location,
    String? name,
    String? project,
  })  : customClassId = pulumi.Input.asInput<String>(customClassId),
        items = pulumi.Input.asOptionalInput<List<ClassItem>>(items),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      customClassId: map['customClassId'] as String,
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<ClassItem>(
              map['items'],
              (value) =>
                  ClassItem.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

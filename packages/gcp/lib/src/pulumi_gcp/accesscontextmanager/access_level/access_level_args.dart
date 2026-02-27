// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_level_basic/access_level_basic.dart';
import '../access_level_custom/access_level_custom.dart';

/// The set of arguments for AccessLevel.
class AccessLevelArgs {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final Input<AccessLevelBasic>? basic;

  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final Input<AccessLevelCustom>? custom;

  /// Description of the AccessLevel and its use. Does not affect behavior.
  final Input<String>? description;

  /// Resource name for the Access Level. The short_name component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final Input<String>? name;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final Input<String> parent;

  /// Human readable title. Must be unique within the Policy.
  final Input<String> title;

  AccessLevelArgs({
    this.basic,
    this.custom,
    this.description,
    this.name,
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] =
          Input.mapOptionalInputValue<AccessLevelBasic, Map<String, dynamic>>(
              basicValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] =
          Input.mapOptionalInputValue<AccessLevelCustom, Map<String, dynamic>>(
              customValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    map['title'] = title;
    return map;
  }

  factory AccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelArgs(
      basic: Input.asOptionalInput<AccessLevelBasic>(map['basic']),
      custom: Input.asOptionalInput<AccessLevelCustom>(map['custom']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      title: Input.asInput<String>(map['title']),
    );
  }
}

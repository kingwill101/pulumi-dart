// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_level_basic/access_level_basic.dart';
import '../access_level_custom/access_level_custom.dart';

/// The set of arguments for AccessLevel.
class AccessLevelArgs {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelBasic>? basic;

  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelCustom>? custom;

  /// Description of the AccessLevel and its use. Does not affect behavior.
  final pulumi.Input<String>? description;

  /// Resource name for the Access Level. The short_name component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final pulumi.Input<String>? name;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;

  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String> title;

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
      map['basic'] = pulumi.Input.mapOptionalInputValue<AccessLevelBasic,
          Map<String, dynamic>>(basicValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] = pulumi.Input.mapOptionalInputValue<AccessLevelCustom,
          Map<String, dynamic>>(customValue, (value) => value.toMap());
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
      basic: pulumi.Input.asOptionalInput<AccessLevelBasic>(map['basic']),
      custom: pulumi.Input.asOptionalInput<AccessLevelCustom>(map['custom']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      title: pulumi.Input.asInput<String>(map['title']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic.dart';
import 'access_level_custom.dart';

/// {@template pulumi_accesscontextmanager_access_level_access_level_args_doc}
/// The set of arguments for AccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_level_access_level_args_doc}
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

  /// Creates a new [AccessLevelArgs].
  /// [basic] A set of predefined conditions for the access level and a combining function.
  /// [custom] Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// [description] Description of the AccessLevel and its use. Does not affect behavior.
  /// [name] Resource name for the Access Level. The short_name component must begin
  /// [parent] The AccessPolicy this AccessLevel lives in.
  /// [title] Human readable title. Must be unique within the Policy.
  AccessLevelArgs({
    AccessLevelBasic? basic,
    AccessLevelCustom? custom,
    String? description,
    String? name,
    required String parent,
    required String title,
  })  : basic = pulumi.Input.asOptionalInput<AccessLevelBasic>(basic),
        custom = pulumi.Input.asOptionalInput<AccessLevelCustom>(custom),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        parent = pulumi.Input.asInput<String>(parent),
        title = pulumi.Input.asInput<String>(title);

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
      basic: map['basic'] == null
          ? null
          : AccessLevelBasic.fromMap(
              (map['basic'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null
          ? null
          : AccessLevelCustom.fromMap(
              (map['custom'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] as String,
      title: map['title'] as String,
    );
  }
}

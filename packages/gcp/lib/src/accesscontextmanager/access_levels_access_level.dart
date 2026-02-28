// ignore_for_file: unused_element, unnecessary_cast

import 'access_levels_access_level_basic.dart';
import 'access_levels_access_level_custom.dart';

class AccessLevelsAccessLevel {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final AccessLevelsAccessLevelBasic? basic;

  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final AccessLevelsAccessLevelCustom? custom;

  /// Description of the AccessLevel and its use. Does not affect behavior.
  final String? description;

  /// Resource name for the Access Level. The short_name component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final String name;

  /// Human readable title. Must be unique within the Policy.
  final String title;

  /// Creates a new [AccessLevelsAccessLevel].
  /// [basic] A set of predefined conditions for the access level and a combining function.
  /// [custom] Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// [description] Description of the AccessLevel and its use. Does not affect behavior.
  /// [name] Resource name for the Access Level. The short_name component must begin
  /// [title] Human readable title. Must be unique within the Policy.
  AccessLevelsAccessLevel({
    this.basic,
    this.custom,
    this.description,
    required this.name,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] = basicValue.toMap();
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] = customValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    map['title'] = title;
    return map;
  }

  factory AccessLevelsAccessLevel.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevel(
      basic: map['basic'] == null
          ? null
          : AccessLevelsAccessLevelBasic.fromMap(
              (map['basic'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null
          ? null
          : AccessLevelsAccessLevelCustom.fromMap(
              (map['custom'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      title: map['title'] as String,
    );
  }
}

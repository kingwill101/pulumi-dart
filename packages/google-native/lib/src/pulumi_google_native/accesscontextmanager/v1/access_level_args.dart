// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'basic_level.dart';
import 'custom_level.dart';

/// The set of arguments for AccessLevel.
class AccessLevelArgs {
  final Input<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  final Input<BasicLevel>? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  final Input<CustomLevel>? custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  final Input<String>? description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  final Input<String>? name;

  /// Human readable title. Must be unique within the Policy.
  final Input<String>? title;

  AccessLevelArgs({
    required this.accessPolicyId,
    this.basic,
    this.custom,
    this.description,
    this.name,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] =
          Input.mapOptionalInputValue<BasicLevel, Map<String, dynamic>>(
              basicValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] =
          Input.mapOptionalInputValue<CustomLevel, Map<String, dynamic>>(
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
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory AccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelArgs(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      basic: Input.asOptionalInput<BasicLevel>(map['basic']),
      custom: Input.asOptionalInput<CustomLevel>(map['custom']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}

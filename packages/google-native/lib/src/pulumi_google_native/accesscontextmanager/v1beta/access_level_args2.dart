// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'basic_level2.dart';
import 'custom_level2.dart';

/// The set of arguments for AccessLevel.
class AccessLevelArgs2 {
  final Input<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  final Input<BasicLevel2>? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  final Input<CustomLevel2>? custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  final Input<String>? description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  final Input<String>? name;

  /// Human readable title. Must be unique within the Policy.
  final Input<String>? title;

  AccessLevelArgs2({
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
          Input.mapOptionalInputValue<BasicLevel2, Map<String, dynamic>>(
              basicValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] =
          Input.mapOptionalInputValue<CustomLevel2, Map<String, dynamic>>(
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

  factory AccessLevelArgs2.fromMap(Map<String, dynamic> map) {
    return AccessLevelArgs2(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      basic: Input.asOptionalInput<BasicLevel2>(map['basic']),
      custom: Input.asOptionalInput<CustomLevel2>(map['custom']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}

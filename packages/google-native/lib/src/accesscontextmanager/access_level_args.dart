// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_level.dart';
import 'custom_level.dart';

/// {@template pulumi_accesscontextmanager_v1_access_level_args_doc}
/// The set of arguments for AccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_access_level_args_doc}
class AccessLevelArgs {
  final pulumi.Input<String> accessPolicyId;
  /// A `BasicLevel` composed of `Conditions`.
  final pulumi.Input<BasicLevel>? basic;
  /// A `CustomLevel` written in the Common Expression Language.
  final pulumi.Input<CustomLevel>? custom;
  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  final pulumi.Input<String>? name;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;

  /// Creates a new [AccessLevelArgs].
  /// [accessPolicyId] Required.
  /// [basic] A `BasicLevel` composed of `Conditions`.
  /// [custom] A `CustomLevel` written in the Common Expression Language.
  /// [description] Description of the `AccessLevel` and its use. Does not affect behavior.
  /// [name] Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  /// [title] Human readable title. Must be unique within the Policy.
  AccessLevelArgs({
    required String accessPolicyId,
    BasicLevel? basic,
    CustomLevel? custom,
    String? description,
    String? name,
    String? title,
  }) :
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
      basic = pulumi.Input.asOptionalInput<BasicLevel>(basic),
      custom = pulumi.Input.asOptionalInput<CustomLevel>(custom),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'basic': ?pulumi.Input.mapOptionalInputValue<BasicLevel, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<CustomLevel, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'title': ?title,
    };
  }

  factory AccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      basic: map['basic'] == null ? null : BasicLevel.fromMap((map['basic'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null ? null : CustomLevel.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}


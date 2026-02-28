// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_level_accesscontextmanager_v1beta.dart';
import 'custom_level_accesscontextmanager_v1beta.dart';

/// {@template pulumi_accesscontextmanager_v1beta_access_level_accesscontextmanager_v1beta_args_doc}
/// The set of arguments for AccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_access_level_accesscontextmanager_v1beta_args_doc}
class AccessLevelAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  final pulumi.Input<BasicLevelAccesscontextmanagerV1beta>? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  final pulumi.Input<CustomLevelAccesscontextmanagerV1beta>? custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  final pulumi.Input<String>? description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  final pulumi.Input<String>? name;

  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;

  /// Creates a new [AccessLevelAccesscontextmanagerV1betaArgs].
  /// [accessPolicyId] Required.
  /// [basic] A `BasicLevel` composed of `Conditions`.
  /// [custom] A `CustomLevel` written in the Common Expression Language.
  /// [description] Description of the `AccessLevel` and its use. Does not affect behavior.
  /// [name] Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  /// [title] Human readable title. Must be unique within the Policy.
  AccessLevelAccesscontextmanagerV1betaArgs({
    required String accessPolicyId,
    BasicLevelAccesscontextmanagerV1beta? basic,
    CustomLevelAccesscontextmanagerV1beta? custom,
    String? description,
    String? name,
    String? title,
  })  : accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
        basic =
            pulumi.Input.asOptionalInput<BasicLevelAccesscontextmanagerV1beta>(
                basic),
        custom =
            pulumi.Input.asOptionalInput<CustomLevelAccesscontextmanagerV1beta>(
                custom),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] = pulumi.Input.mapOptionalInputValue<
          BasicLevelAccesscontextmanagerV1beta,
          Map<String, dynamic>>(basicValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] = pulumi.Input.mapOptionalInputValue<
          CustomLevelAccesscontextmanagerV1beta,
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
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory AccessLevelAccesscontextmanagerV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelAccesscontextmanagerV1betaArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      basic: map['basic'] == null
          ? null
          : BasicLevelAccesscontextmanagerV1beta.fromMap(
              (map['basic'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null
          ? null
          : CustomLevelAccesscontextmanagerV1beta.fromMap(
              (map['custom'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

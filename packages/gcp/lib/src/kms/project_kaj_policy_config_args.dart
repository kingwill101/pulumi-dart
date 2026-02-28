// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_kaj_policy_config_default_key_access_justification_policy.dart';

/// {@template pulumi_kms_project_kaj_policy_config_project_kaj_policy_config_args_doc}
/// The set of arguments for ProjectKajPolicyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_project_kaj_policy_config_project_kaj_policy_config_args_doc}
class ProjectKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this project. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy>?
      defaultKeyAccessJustificationPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectKajPolicyConfigArgs].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [project] The ID of the project in which the resource belongs.
  ProjectKajPolicyConfigArgs({
    ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?
        defaultKeyAccessJustificationPolicy,
    String? project,
  })  : defaultKeyAccessJustificationPolicy = pulumi.Input.asOptionalInput<
                ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy>(
            defaultKeyAccessJustificationPolicy),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeyAccessJustificationPolicyValue =
        defaultKeyAccessJustificationPolicy;
    if (defaultKeyAccessJustificationPolicyValue != null) {
      map['defaultKeyAccessJustificationPolicy'] =
          pulumi.Input.mapOptionalInputValue<
                  ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy,
                  Map<String, dynamic>>(
              defaultKeyAccessJustificationPolicyValue,
              (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy:
          map['defaultKeyAccessJustificationPolicy'] == null
              ? null
              : ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy
                  .fromMap((map['defaultKeyAccessJustificationPolicy'] as Map)
                      .cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

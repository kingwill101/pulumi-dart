// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_cloud_armor_tier_project_cloud_armor_tier_args_doc}
/// The set of arguments for ProjectCloudArmorTier.
/// {@endtemplate}
/// {@macro pulumi_compute_project_cloud_armor_tier_project_cloud_armor_tier_args_doc}
class ProjectCloudArmorTierArgs {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  final pulumi.Input<String> cloudArmorTier;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectCloudArmorTierArgs].
  /// [cloudArmorTier] Managed protection tier to be set.
  /// [project] The ID of the project in which the resource belongs.
  ProjectCloudArmorTierArgs({required String cloudArmorTier, String? project})
    : cloudArmorTier = pulumi.Input.asInput<String>(cloudArmorTier),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudArmorTier': cloudArmorTier,
      'project': ?project,
    };
  }

  factory ProjectCloudArmorTierArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCloudArmorTierArgs(
      cloudArmorTier: map['cloudArmorTier'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

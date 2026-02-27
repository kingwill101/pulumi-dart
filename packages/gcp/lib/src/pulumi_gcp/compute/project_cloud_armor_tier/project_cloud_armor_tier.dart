import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_cloud_armor_tier_args.dart';

/// Sets the Cloud Armor tier of the project.
///
///
/// To get more information about ProjectCloudArmorTier, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setCloudArmorTier)
/// * How-to Guides
/// * [Subscribing to Cloud Armor Enterprise](https://cloud.google.com/armor/docs/managed-protection-overview#subscribing_to_plus)
///
/// ## Example Usage
///
/// ### Compute Project Cloud Armor Tier Basic
///
///
///
/// ### Compute Project Cloud Armor Tier Project Set
///
///
///
///
/// ## Import
///
/// ProjectCloudArmorTier can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectCloudArmorTier can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier default {{project}}
/// ```
class ProjectCloudArmorTier extends pulumi.CustomResource {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  late final pulumi.Output<String> cloudArmorTier;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  ProjectCloudArmorTier(
    String name, {
    ProjectCloudArmorTierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudArmorTier = registerOutput<String>('cloudArmorTier');
    this.project = registerOutput<String>('project');
  }
}

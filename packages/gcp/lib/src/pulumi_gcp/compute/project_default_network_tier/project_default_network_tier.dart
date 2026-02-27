import 'package:pulumi/pulumi.dart';
import 'project_default_network_tier_args.dart';

/// Configures the Google Compute Engine
/// [Default Network Tier](https://cloud.google.com/network-tiers/docs/using-network-service-tiers#setting_the_tier_for_all_resources_in_a_project)
/// for a project.
///
/// For more information, see,
/// [the Project API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setDefaultNetworkTier).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Compute Engine Default Network Tier can be imported using any of these accepted formats:
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Compute Engine Default Network Tier can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectDefaultNetworkTier:ProjectDefaultNetworkTier default {{project_id}}
/// ```
class ProjectDefaultNetworkTier extends CustomResource {
  /// The default network tier to be configured for the project.
  /// This field can take the following values: `PREMIUM` or `STANDARD`.
  ///
  /// - - -
  late final Output<String> networkTier;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  ProjectDefaultNetworkTier(
    String name, {
    ProjectDefaultNetworkTierArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectDefaultNetworkTier:ProjectDefaultNetworkTier',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.networkTier = registerOutput<String>('networkTier');
    this.project = registerOutput<String>('project');
  }
}

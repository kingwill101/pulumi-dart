import 'package:pulumi/pulumi.dart';
import '../feature_membership_configmanagement/feature_membership_configmanagement.dart';
import '../feature_membership_mesh/feature_membership_mesh.dart';
import '../feature_membership_policycontroller/feature_membership_policycontroller.dart';
import 'feature_membership_args.dart';

/// Contains information about a GKEHub Feature Memberships. Feature Memberships configure GKEHub Features that apply to specific memberships rather than the project as a whole. The google_gke_hub is the Fleet API.
///
/// ## Example Usage
///
/// ### Config Management With Config Sync Auto-Upgrades And Without Git/OCI
///
/// With [Config Sync auto-upgrades](https://cloud.devsite.corp.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/upgrade-config-sync#auto-upgrade-config), Google assumes responsibility for automatically upgrading Config Sync versions
/// and overseeing the lifecycle of its components.
///
///
///
/// ### Config Management With Git
///
///
///
/// ### Config Management With OCI
///
///
///
///
/// ### Config Management With Deployment Override
///
///
///
/// ### Config Management With Regional Membership
///
///
///
/// ### Multi Cluster Service Discovery
///
///
///
/// ### Service Mesh
///
///
///
/// ### Policy Controller With Minimal Configuration
///
///
///
/// ### Policy Controller With Custom Configurations
///
///
///
/// ## Import
///
/// FeatureMembership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/features/{{feature}}/membershipId/{{membership}}`
///
/// * `{{project}}/{{location}}/{{feature}}/{{membership}}`
///
/// * `{{location}}/{{feature}}/{{membership}}`
///
/// When using the `pulumi import` command, FeatureMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default projects/{{project}}/locations/{{location}}/features/{{feature}}/membershipId/{{membership}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default {{project}}/{{location}}/{{feature}}/{{membership}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default {{location}}/{{feature}}/{{membership}}
/// ```
class FeatureMembership extends CustomResource {
  /// Config Management-specific spec. Structure is documented below.
  late final Output<FeatureMembershipConfigmanagement?> configmanagement;

  /// The name of the feature
  late final Output<String> feature;

  /// The location of the feature
  late final Output<String> location;

  /// The name of the membership
  late final Output<String> membership;

  /// The location of the membership, for example, "us-central1". Default is "global".
  late final Output<String?> membershipLocation;

  /// Service mesh specific spec. Structure is documented below.
  late final Output<FeatureMembershipMesh?> mesh;

  /// Policy Controller-specific spec. Structure is documented below.
  late final Output<FeatureMembershipPolicycontroller?> policycontroller;

  /// The project of the feature
  late final Output<String> project;

  FeatureMembership(
    String name, {
    FeatureMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/featureMembership:FeatureMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configmanagement =
        registerOutput<FeatureMembershipConfigmanagement?>('configmanagement');
    this.feature = registerOutput<String>('feature');
    this.location = registerOutput<String>('location');
    this.membership = registerOutput<String>('membership');
    this.membershipLocation = registerOutput<String?>('membershipLocation');
    this.mesh = registerOutput<FeatureMembershipMesh?>('mesh');
    this.policycontroller =
        registerOutput<FeatureMembershipPolicycontroller?>('policycontroller');
    this.project = registerOutput<String>('project');
  }
}

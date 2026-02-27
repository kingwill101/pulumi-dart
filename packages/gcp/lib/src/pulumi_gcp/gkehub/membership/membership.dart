import 'package:pulumi/pulumi.dart' as pulumi;
import '../membership_authority/membership_authority.dart';
import '../membership_endpoint/membership_endpoint.dart';
import 'membership_args.dart';

/// Membership contains information about a member cluster.
///
///
/// To get more information about Membership, see:
///
/// * [API documentation](https://cloud.google.com/anthos/multicluster-management/reference/rest/v1/projects.locations.memberships)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Regional
///
///
///
/// ### Gkehub Membership Basic
///
///
///
/// ### Gkehub Membership Issuer
///
///
///
///
/// ## Import
///
/// Membership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}`
///
/// * `{{project}}/{{location}}/{{membership_id}}`
///
/// * `{{location}}/{{membership_id}}`
///
/// When using the `pulumi import` command, Membership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default {{project}}/{{location}}/{{membership_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default {{location}}/{{membership_id}}
/// ```
class Membership extends pulumi.CustomResource {
  /// Authority encodes how Google will recognize identities from this Membership.
  /// See the workload identity documentation for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// Structure is documented below.
  late final pulumi.Output<MembershipAuthority?> authority;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  late final pulumi.Output<MembershipEndpoint?> endpoint;

  /// Labels to apply to this membership.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location of the membership.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// The client-provided identifier of the membership.
  late final pulumi.Output<String> membershipId;

  /// The unique identifier of the membership.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  Membership(
    String name, {
    MembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membership:Membership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authority = registerOutput<MembershipAuthority?>('authority');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoint = registerOutput<MembershipEndpoint?>('endpoint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}

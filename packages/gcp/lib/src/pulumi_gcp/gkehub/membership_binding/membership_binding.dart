import 'package:pulumi/pulumi.dart';
import '../membership_binding_state/membership_binding_state.dart';
import 'membership_binding_args.dart';

/// MembershipBinding is a subresource of a Membership, representing what Fleet Scopes (or other, future Fleet resources) a Membership is bound to.
///
///
/// To get more information about MembershipBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.memberships.bindings)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Binding Basic
///
///
///
///
/// ## Import
///
/// MembershipBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/bindings/{{membership_binding_id}}`
///
/// * `{{project}}/{{location}}/{{membership_id}}/{{membership_binding_id}}`
///
/// * `{{location}}/{{membership_id}}/{{membership_binding_id}}`
///
/// When using the `pulumi import` command, MembershipBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/bindings/{{membership_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default {{project}}/{{location}}/{{membership_id}}/{{membership_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default {{location}}/{{membership_id}}/{{membership_binding_id}}
/// ```
class MembershipBinding extends CustomResource {
  /// Time the MembershipBinding was created in UTC.
  late final Output<String> createTime;

  /// Time the MembershipBinding was deleted in UTC.
  late final Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels for this Membership binding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location of the membership
  late final Output<String> location;

  /// The client-provided identifier of the membership binding.
  late final Output<String> membershipBindingId;

  /// Id of the membership
  late final Output<String> membershipId;

  /// The resource name for the membershipbinding itself
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A Workspace resource name in the format
  /// `projects/*/locations/*/scopes/*`.
  late final Output<String> scope;

  /// State of the membership binding resource.
  /// Structure is documented below.
  late final Output<List<MembershipBindingState>> states;

  /// Google-generated UUID for this resource.
  late final Output<String> uid;

  /// Time the MembershipBinding was updated in UTC.
  late final Output<String> updateTime;

  MembershipBinding(
    String name, {
    MembershipBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipBinding:MembershipBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.membershipBindingId = registerOutput<String>('membershipBindingId');
    this.membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.scope = registerOutput<String>('scope');
    this.states = registerOutput<List<MembershipBindingState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

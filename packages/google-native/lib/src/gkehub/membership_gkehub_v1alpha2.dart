import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_response_gkehub_v1alpha2.dart';
import 'membership_endpoint_response_gkehub_v1alpha2.dart';
import 'membership_gkehub_v1alpha2_args.dart';
import 'membership_state_response_gkehub_v1alpha2.dart';
import 'monitoring_config_response_gkehub_v1alpha2.dart';

/// Creates a new Membership. **This is currently only supported for GKE clusters on Google Cloud**. To register other clusters, follow the instructions at https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster.
/// Auto-naming is currently not supported for this resource.
class MembershipGkehubV1alpha2 extends pulumi.CustomResource {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  late final pulumi.Output<AuthorityResponseGkehubV1alpha2> authority;

  /// When the Membership was created.
  late final pulumi.Output<String> createTime;

  /// When the Membership was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
  late final pulumi.Output<String> description;

  /// Optional. Endpoint information to reach this member.
  late final pulumi.Output<MembershipEndpointResponseGkehubV1alpha2> endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  late final pulumi.Output<String> externalId;

  /// Optional. The infrastructure type this Membership is running on.
  late final pulumi.Output<String> infrastructureType;

  /// Optional. Labels for this membership.
  late final pulumi.Output<Map<String, String>> labels;

  /// For clusters using Connect, the timestamp of the most recent connection established with Google Cloud. This time is updated every several minutes, not continuously. For clusters that do not use GKE Connect, or that have never connected successfully, this field will be unset.
  late final pulumi.Output<String> lastConnectionTime;
  late final pulumi.Output<String> location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final pulumi.Output<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  late final pulumi.Output<MonitoringConfigResponseGkehubV1alpha2>
  monitoringConfig;

  /// The full, unique name of this Membership resource in the format `projects/*/locations/*/memberships/{membership_id}`, set during creation. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the Membership resource.
  late final pulumi.Output<MembershipStateResponseGkehubV1alpha2> state;

  /// Google-generated UUID for this resource. This is unique across all Membership resources. If a Membership resource is deleted and another resource with the same name is created, it gets a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// When the Membership was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MembershipGkehubV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipGkehubV1alpha2]. {@macro pulumi_gkehub_v1alpha2_membership_gkehub_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipGkehubV1alpha2(
    String name, {
    MembershipGkehubV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkehub/v1alpha2:Membership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.authority = registerOutput<AuthorityResponseGkehubV1alpha2>(
      'authority',
    );
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.endpoint = registerOutput<MembershipEndpointResponseGkehubV1alpha2>(
      'endpoint',
    );
    this.externalId = registerOutput<String>('externalId');
    this.infrastructureType = registerOutput<String>('infrastructureType');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lastConnectionTime = registerOutput<String>('lastConnectionTime');
    this.location = registerOutput<String>('location');
    this.membershipId = registerOutput<String>('membershipId');
    this.monitoringConfig =
        registerOutput<MonitoringConfigResponseGkehubV1alpha2>(
          'monitoringConfig',
        );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<MembershipStateResponseGkehubV1alpha2>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

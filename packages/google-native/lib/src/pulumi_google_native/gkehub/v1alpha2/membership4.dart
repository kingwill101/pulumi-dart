import 'package:pulumi/pulumi.dart';
import 'authority_response3.dart';
import 'membership_args4.dart';
import 'membership_endpoint_response2.dart';
import 'membership_state_response2.dart';
import 'monitoring_config_response4.dart';

/// Creates a new Membership. **This is currently only supported for GKE clusters on Google Cloud**. To register other clusters, follow the instructions at https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster.
/// Auto-naming is currently not supported for this resource.
class Membership4 extends CustomResource {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  late final Output<AuthorityResponse3> authority;

  /// When the Membership was created.
  late final Output<String> createTime;

  /// When the Membership was deleted.
  late final Output<String> deleteTime;

  /// Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
  late final Output<String> description;

  /// Optional. Endpoint information to reach this member.
  late final Output<MembershipEndpointResponse2> endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  late final Output<String> externalId;

  /// Optional. The infrastructure type this Membership is running on.
  late final Output<String> infrastructureType;

  /// Optional. Labels for this membership.
  late final Output<Map<String, String>> labels;

  /// For clusters using Connect, the timestamp of the most recent connection established with Google Cloud. This time is updated every several minutes, not continuously. For clusters that do not use GKE Connect, or that have never connected successfully, this field will be unset.
  late final Output<String> lastConnectionTime;
  late final Output<String> location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final Output<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  late final Output<MonitoringConfigResponse4> monitoringConfig;

  /// The full, unique name of this Membership resource in the format `projects/*/locations/*/memberships/{membership_id}`, set during creation. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final Output<String> name;
  late final Output<String> project;

  /// State of the Membership resource.
  late final Output<MembershipStateResponse2> state;

  /// Google-generated UUID for this resource. This is unique across all Membership resources. If a Membership resource is deleted and another resource with the same name is created, it gets a different unique_id.
  late final Output<String> uniqueId;

  /// When the Membership was last updated.
  late final Output<String> updateTime;

  Membership4(
    String name, {
    MembershipArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1alpha2:Membership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authority = Output.createUnknown<AuthorityResponse3>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<MembershipEndpointResponse2>();
    this.externalId = Output.createUnknown<String>();
    this.infrastructureType = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lastConnectionTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.membershipId = Output.createUnknown<String>();
    this.monitoringConfig = Output.createUnknown<MonitoringConfigResponse4>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<MembershipStateResponse2>();
    this.uniqueId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}

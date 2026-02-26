import 'package:pulumi/pulumi.dart';
import 'resource_policy_args.dart';
import 'resource_policy_group_placement_policy_response.dart';
import 'resource_policy_instance_schedule_policy_response.dart';
import 'resource_policy_resource_status_response.dart';
import 'resource_policy_snapshot_schedule_policy_response.dart';
import 'resource_policy_vm_maintenance_policy_response.dart';

/// Creates a new resource policy.
class ResourcePolicy extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;
  late final Output<String> description;

  /// Resource policy for disk consistency groups.
  late final Output<Map<String, dynamic>> diskConsistencyGroupPolicy;

  /// Resource policy for instances for placement configuration.
  late final Output<ResourcePolicyGroupPlacementPolicyResponse>
      groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  late final Output<ResourcePolicyInstanceSchedulePolicyResponse>
      instanceSchedulePolicy;

  /// Type of the resource. Always compute#resource_policies for resource policies.
  late final Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The system status of the resource policy.
  late final Output<ResourcePolicyResourceStatusResponse> resourceStatus;

  /// Server-defined fully-qualified URL for this resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Resource policy for persistent disks for creating snapshots.
  late final Output<ResourcePolicySnapshotSchedulePolicyResponse>
      snapshotSchedulePolicy;

  /// The status of resource policy creation.
  late final Output<String> status;

  /// Resource policy applicable to VMs for infrastructure maintenance.
  late final Output<ResourcePolicyVmMaintenancePolicyResponse>
      vmMaintenancePolicy;

  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.diskConsistencyGroupPolicy =
        Output.createUnknown<Map<String, dynamic>>();
    this.groupPlacementPolicy =
        Output.createUnknown<ResourcePolicyGroupPlacementPolicyResponse>();
    this.instanceSchedulePolicy =
        Output.createUnknown<ResourcePolicyInstanceSchedulePolicyResponse>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.resourceStatus =
        Output.createUnknown<ResourcePolicyResourceStatusResponse>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.snapshotSchedulePolicy =
        Output.createUnknown<ResourcePolicySnapshotSchedulePolicyResponse>();
    this.status = Output.createUnknown<String>();
    this.vmMaintenancePolicy =
        Output.createUnknown<ResourcePolicyVmMaintenancePolicyResponse>();
  }
}

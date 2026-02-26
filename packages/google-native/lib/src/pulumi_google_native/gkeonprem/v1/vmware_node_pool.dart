import 'package:pulumi/pulumi.dart';
import 'resource_status_response4.dart';
import 'vmware_node_config_response.dart';
import 'vmware_node_pool_args.dart';
import 'vmware_node_pool_autoscaling_config_response.dart';

/// Creates a new VMware node pool in a given project, location and VMWare cluster.
class VmwareNodePool extends CustomResource {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final Output<Map<String, String>> annotations;

  /// The node configuration of the node pool.
  late final Output<VmwareNodeConfigResponse> config;

  /// The time at which this node pool was created.
  late final Output<String> createTime;

  /// The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  late final Output<String> deleteTime;

  /// The display name for the node pool.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final Output<String> etag;
  late final Output<String> location;

  /// Immutable. The resource name of this node pool.
  late final Output<String> name;

  /// Node pool autoscaling config for the node pool.
  late final Output<VmwareNodePoolAutoscalingConfigResponse>
      nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  late final Output<String> onPremVersion;
  late final Output<String> project;

  /// If set, there are currently changes in flight to the node pool.
  late final Output<bool> reconciling;

  /// The current state of the node pool.
  late final Output<String> state;

  /// ResourceStatus representing the detailed VMware node pool state.
  late final Output<ResourceStatusResponse4> status;

  /// The unique identifier of the node pool.
  late final Output<String> uid;

  /// The time at which this node pool was last updated.
  late final Output<String> updateTime;
  late final Output<String> vmwareClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  late final Output<String?> vmwareNodePoolId;

  VmwareNodePool(
    String name, {
    VmwareNodePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:VmwareNodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.config = Output.createUnknown<VmwareNodeConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nodePoolAutoscaling =
        Output.createUnknown<VmwareNodePoolAutoscalingConfigResponse>();
    this.onPremVersion = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.status = Output.createUnknown<ResourceStatusResponse4>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vmwareClusterId = Output.createUnknown<String>();
    this.vmwareNodePoolId = Output.createUnknown<String?>();
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_status_response_gkeonprem_v1.dart';
import 'vmware_node_config_response.dart';
import 'vmware_node_pool_args.dart';
import 'vmware_node_pool_autoscaling_config_response.dart';

/// Creates a new VMware node pool in a given project, location and VMWare cluster.
class VmwareNodePool extends pulumi.CustomResource {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<Map<String, String>> annotations;

  /// The node configuration of the node pool.
  late final pulumi.Output<VmwareNodeConfigResponse> config;

  /// The time at which this node pool was created.
  late final pulumi.Output<String> createTime;

  /// The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  late final pulumi.Output<String> deleteTime;

  /// The display name for the node pool.
  late final pulumi.Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;

  /// Immutable. The resource name of this node pool.
  late final pulumi.Output<String> name;

  /// Node pool autoscaling config for the node pool.
  late final pulumi.Output<VmwareNodePoolAutoscalingConfigResponse>
      nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  late final pulumi.Output<String> onPremVersion;
  late final pulumi.Output<String> project;

  /// If set, there are currently changes in flight to the node pool.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the node pool.
  late final pulumi.Output<String> state;

  /// ResourceStatus representing the detailed VMware node pool state.
  late final pulumi.Output<ResourceStatusResponseGkeonpremV1> status;

  /// The unique identifier of the node pool.
  late final pulumi.Output<String> uid;

  /// The time at which this node pool was last updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> vmwareClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  late final pulumi.Output<String?> vmwareNodePoolId;

  VmwareNodePool(
    String name, {
    VmwareNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:VmwareNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.config = registerOutput<VmwareNodeConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nodePoolAutoscaling =
        registerOutput<VmwareNodePoolAutoscalingConfigResponse>(
            'nodePoolAutoscaling');
    this.onPremVersion = registerOutput<String>('onPremVersion');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<ResourceStatusResponseGkeonpremV1>('status');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareClusterId = registerOutput<String>('vmwareClusterId');
    this.vmwareNodePoolId = registerOutput<String?>('vmwareNodePoolId');
  }
}

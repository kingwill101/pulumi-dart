import 'package:pulumi/pulumi.dart';
import 'bare_metal_node_pool_args.dart';
import 'bare_metal_node_pool_config_response.dart';
import 'bare_metal_node_pool_upgrade_policy_response.dart';
import 'resource_status_response4.dart';

/// Creates a new bare metal node pool in a given project, location and Bare Metal cluster.
class BareMetalNodePool extends CustomResource {
  /// Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final Output<Map<String, String>> annotations;
  late final Output<String> bareMetalClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 63 characters, and valid characters are /a-z-/. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  late final Output<String?> bareMetalNodePoolId;

  /// The time at which this bare metal node pool was created.
  late final Output<String> createTime;

  /// The time at which this bare metal node pool was deleted. If the resource is not deleted, this must be empty
  late final Output<String> deleteTime;

  /// The display name for the bare metal node pool.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final Output<String> etag;
  late final Output<String> location;

  /// Immutable. The bare metal node pool resource name.
  late final Output<String> name;

  /// Node pool configuration.
  late final Output<BareMetalNodePoolConfigResponse> nodePoolConfig;
  late final Output<String> project;

  /// If set, there are currently changes in flight to the bare metal node pool.
  late final Output<bool> reconciling;

  /// The current state of the bare metal node pool.
  late final Output<String> state;

  /// ResourceStatus representing the detailed node pool status.
  late final Output<ResourceStatusResponse4> status;

  /// The unique identifier of the bare metal node pool.
  late final Output<String> uid;

  /// The time at which this bare metal node pool was last updated.
  late final Output<String> updateTime;

  /// The worker node pool upgrade policy.
  late final Output<BareMetalNodePoolUpgradePolicyResponse> upgradePolicy;

  BareMetalNodePool(
    String name, {
    BareMetalNodePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:BareMetalNodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.bareMetalClusterId = registerOutput<String>('bareMetalClusterId');
    this.bareMetalNodePoolId = registerOutput<String?>('bareMetalNodePoolId');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nodePoolConfig =
        registerOutput<BareMetalNodePoolConfigResponse>('nodePoolConfig');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<ResourceStatusResponse4>('status');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradePolicy =
        registerOutput<BareMetalNodePoolUpgradePolicyResponse>('upgradePolicy');
  }
}

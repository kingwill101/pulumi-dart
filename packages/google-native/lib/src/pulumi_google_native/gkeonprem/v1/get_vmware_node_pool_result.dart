// ignore_for_file: unused_element, unnecessary_cast

import 'resource_status_response4.dart';
import 'vmware_node_config_response.dart';
import 'vmware_node_pool_autoscaling_config_response.dart';

/// Result data returned by getVmwareNodePool.
class GetVmwareNodePoolResult {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String> annotations;

  /// The node configuration of the node pool.
  final VmwareNodeConfigResponse config;

  /// The time at which this node pool was created.
  final String createTime;

  /// The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  final String deleteTime;

  /// The display name for the node pool.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String etag;

  /// Immutable. The resource name of this node pool.
  final String name;

  /// Node pool autoscaling config for the node pool.
  final VmwareNodePoolAutoscalingConfigResponse nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  final String onPremVersion;

  /// If set, there are currently changes in flight to the node pool.
  final bool reconciling;

  /// The current state of the node pool.
  final String state;

  /// ResourceStatus representing the detailed VMware node pool state.
  final ResourceStatusResponse4 status;

  /// The unique identifier of the node pool.
  final String uid;

  /// The time at which this node pool was last updated.
  final String updateTime;

  GetVmwareNodePoolResult({
    required this.annotations,
    required this.config,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.nodePoolAutoscaling,
    required this.onPremVersion,
    required this.reconciling,
    required this.state,
    required this.status,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['name'] = name;
    map['nodePoolAutoscaling'] = nodePoolAutoscaling.toMap();
    map['onPremVersion'] = onPremVersion;
    map['reconciling'] = reconciling;
    map['state'] = state;
    map['status'] = status.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetVmwareNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetVmwareNodePoolResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      config: VmwareNodeConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      nodePoolAutoscaling: VmwareNodePoolAutoscalingConfigResponse.fromMap(
          (map['nodePoolAutoscaling'] as Map).cast<String, dynamic>()),
      onPremVersion: map['onPremVersion'] as String,
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      status: ResourceStatusResponse4.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

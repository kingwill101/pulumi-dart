// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config_response.dart';
import 'bare_metal_node_pool_upgrade_policy_response.dart';
import 'resource_status_response.dart';

/// Result data returned by getBareMetalNodePool.
class GetBareMetalNodePoolResult {
  /// Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String> annotations;
  /// The time at which this bare metal node pool was created.
  final String createTime;
  /// The time at which this bare metal node pool was deleted. If the resource is not deleted, this must be empty
  final String deleteTime;
  /// The display name for the bare metal node pool.
  final String displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String etag;
  /// Immutable. The bare metal node pool resource name.
  final String name;
  /// Node pool configuration.
  final BareMetalNodePoolConfigResponse nodePoolConfig;
  /// If set, there are currently changes in flight to the bare metal node pool.
  final bool reconciling;
  /// The current state of the bare metal node pool.
  final String state;
  /// ResourceStatus representing the detailed node pool status.
  final ResourceStatusResponse status;
  /// The unique identifier of the bare metal node pool.
  final String uid;
  /// The time at which this bare metal node pool was last updated.
  final String updateTime;
  /// The worker node pool upgrade policy.
  final BareMetalNodePoolUpgradePolicyResponse upgradePolicy;

  /// Creates a new [GetBareMetalNodePoolResult].
  /// [annotations] Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [createTime] The time at which this bare metal node pool was created.
  /// [deleteTime] The time at which this bare metal node pool was deleted. If the resource is not deleted, this must be empty
  /// [displayName] The display name for the bare metal node pool.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [name] Immutable. The bare metal node pool resource name.
  /// [nodePoolConfig] Node pool configuration.
  /// [reconciling] If set, there are currently changes in flight to the bare metal node pool.
  /// [state] The current state of the bare metal node pool.
  /// [status] ResourceStatus representing the detailed node pool status.
  /// [uid] The unique identifier of the bare metal node pool.
  /// [updateTime] The time at which this bare metal node pool was last updated.
  /// [upgradePolicy] The worker node pool upgrade policy.
  GetBareMetalNodePoolResult({
    required this.annotations,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.nodePoolConfig,
    required this.reconciling,
    required this.state,
    required this.status,
    required this.uid,
    required this.updateTime,
    required this.upgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'name': name,
      'nodePoolConfig': nodePoolConfig.toMap(),
      'reconciling': reconciling,
      'state': state,
      'status': status.toMap(),
      'uid': uid,
      'updateTime': updateTime,
      'upgradePolicy': upgradePolicy.toMap(),
    };
  }

  factory GetBareMetalNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalNodePoolResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      nodePoolConfig: BareMetalNodePoolConfigResponse.fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      status: ResourceStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      upgradePolicy: BareMetalNodePoolUpgradePolicyResponse.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}


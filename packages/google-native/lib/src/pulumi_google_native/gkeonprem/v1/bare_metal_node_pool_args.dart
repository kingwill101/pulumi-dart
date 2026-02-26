// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_node_pool_config.dart';
import 'bare_metal_node_pool_upgrade_policy.dart';

/// The set of arguments for BareMetalNodePool.
class BareMetalNodePoolArgs {
  /// Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<Map<String, String>>? annotations;
  final Input<String> bareMetalClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 63 characters, and valid characters are /a-z-/. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  final Input<String>? bareMetalNodePoolId;

  /// The display name for the bare metal node pool.
  final Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final Input<String>? etag;
  final Input<String>? location;

  /// Immutable. The bare metal node pool resource name.
  final Input<String>? name;

  /// Node pool configuration.
  final Input<BareMetalNodePoolConfig> nodePoolConfig;
  final Input<String>? project;

  /// The worker node pool upgrade policy.
  final Input<BareMetalNodePoolUpgradePolicy>? upgradePolicy;

  BareMetalNodePoolArgs({
    this.annotations,
    required this.bareMetalClusterId,
    this.bareMetalNodePoolId,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    required this.nodePoolConfig,
    this.project,
    this.upgradePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['bareMetalClusterId'] = bareMetalClusterId;
    final bareMetalNodePoolIdValue = bareMetalNodePoolId;
    if (bareMetalNodePoolIdValue != null) {
      map['bareMetalNodePoolId'] = bareMetalNodePoolIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nodePoolConfig'] =
        Input.mapInputValue<BareMetalNodePoolConfig, Map<String, dynamic>>(
            nodePoolConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = Input.mapOptionalInputValue<
          BareMetalNodePoolUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalClusterId: Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalNodePoolId:
          Input.asOptionalInput<String>(map['bareMetalNodePoolId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nodePoolConfig:
          Input.asInput<BareMetalNodePoolConfig>(map['nodePoolConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      upgradePolicy: Input.asOptionalInput<BareMetalNodePoolUpgradePolicy>(
          map['upgradePolicy']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'vmware_node_config.dart';
import 'vmware_node_pool_autoscaling_config.dart';

/// The set of arguments for VmwareNodePool.
class VmwareNodePoolArgs {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<Map<String, String>>? annotations;

  /// The node configuration of the node pool.
  final Input<VmwareNodeConfig> config;

  /// The display name for the node pool.
  final Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final Input<String>? etag;
  final Input<String>? location;

  /// Immutable. The resource name of this node pool.
  final Input<String>? name;

  /// Node pool autoscaling config for the node pool.
  final Input<VmwareNodePoolAutoscalingConfig>? nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  final Input<String>? onPremVersion;
  final Input<String>? project;
  final Input<String> vmwareClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  final Input<String>? vmwareNodePoolId;

  VmwareNodePoolArgs({
    this.annotations,
    required this.config,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.project,
    required this.vmwareClusterId,
    this.vmwareNodePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['config'] = Input.mapInputValue<VmwareNodeConfig, Map<String, dynamic>>(
        config, (value) => value.toMap());
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
    final nodePoolAutoscalingValue = nodePoolAutoscaling;
    if (nodePoolAutoscalingValue != null) {
      map['nodePoolAutoscaling'] = Input.mapOptionalInputValue<
              VmwareNodePoolAutoscalingConfig, Map<String, dynamic>>(
          nodePoolAutoscalingValue, (value) => value.toMap());
    }
    final onPremVersionValue = onPremVersion;
    if (onPremVersionValue != null) {
      map['onPremVersion'] = onPremVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareClusterId'] = vmwareClusterId;
    final vmwareNodePoolIdValue = vmwareNodePoolId;
    if (vmwareNodePoolIdValue != null) {
      map['vmwareNodePoolId'] = vmwareNodePoolIdValue;
    }
    return map;
  }

  factory VmwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return VmwareNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      config: Input.asInput<VmwareNodeConfig>(map['config']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nodePoolAutoscaling:
          Input.asOptionalInput<VmwareNodePoolAutoscalingConfig>(
              map['nodePoolAutoscaling']),
      onPremVersion: Input.asOptionalInput<String>(map['onPremVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareClusterId: Input.asInput<String>(map['vmwareClusterId']),
      vmwareNodePoolId: Input.asOptionalInput<String>(map['vmwareNodePoolId']),
    );
  }
}

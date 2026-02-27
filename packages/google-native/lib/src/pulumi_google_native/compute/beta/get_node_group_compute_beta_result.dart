// ignore_for_file: unused_element, unnecessary_cast

import 'node_group_autoscaling_policy_response_compute_beta.dart';
import 'node_group_maintenance_window_response_compute_beta.dart';
import 'share_settings_response_compute_beta.dart';

/// Result data returned by getNodeGroup.
class GetNodeGroupComputeBetaResult {
  /// Specifies how autoscaling should behave.
  final NodeGroupAutoscalingPolicyResponseComputeBeta autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  final String fingerprint;

  /// The type of the resource. Always compute#nodeGroup for node group.
  final String kind;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final String locationHint;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  final String maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final String maintenancePolicy;
  final NodeGroupMaintenanceWindowResponseComputeBeta maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// URL of the node template to create the node group from.
  final String nodeTemplate;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Share-settings for the node group
  final ShareSettingsResponseComputeBeta shareSettings;

  /// The total number of nodes in the node group.
  final int size;
  final String status;

  /// The name of the zone where the node group resides, such as us-central1-a.
  final String zone;

  GetNodeGroupComputeBetaResult({
    required this.autoscalingPolicy,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.locationHint,
    required this.maintenanceInterval,
    required this.maintenancePolicy,
    required this.maintenanceWindow,
    required this.name,
    required this.nodeTemplate,
    required this.selfLink,
    required this.shareSettings,
    required this.size,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicy'] = autoscalingPolicy.toMap();
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['kind'] = kind;
    map['locationHint'] = locationHint;
    map['maintenanceInterval'] = maintenanceInterval;
    map['maintenancePolicy'] = maintenancePolicy;
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    map['name'] = name;
    map['nodeTemplate'] = nodeTemplate;
    map['selfLink'] = selfLink;
    map['shareSettings'] = shareSettings.toMap();
    map['size'] = size;
    map['status'] = status;
    map['zone'] = zone;
    return map;
  }

  factory GetNodeGroupComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupComputeBetaResult(
      autoscalingPolicy: NodeGroupAutoscalingPolicyResponseComputeBeta.fromMap(
          (map['autoscalingPolicy'] as Map).cast<String, dynamic>()),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      locationHint: map['locationHint'] as String,
      maintenanceInterval: map['maintenanceInterval'] as String,
      maintenancePolicy: map['maintenancePolicy'] as String,
      maintenanceWindow: NodeGroupMaintenanceWindowResponseComputeBeta.fromMap(
          (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodeTemplate: map['nodeTemplate'] as String,
      selfLink: map['selfLink'] as String,
      shareSettings: ShareSettingsResponseComputeBeta.fromMap(
          (map['shareSettings'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      status: map['status'] as String,
      zone: map['zone'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'default_cluster_config_response3.dart';
import 'fleet_lifecycle_state_response3.dart';

/// Result data returned by getFleet.
class GetFleetResult3 {
  /// When the Fleet was created.
  final String createTime;

  /// Optional. The default cluster configurations to apply across the fleet.
  final DefaultClusterConfigResponse3 defaultClusterConfig;

  /// When the Fleet was deleted.
  final String deleteTime;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final String displayName;

  /// Optional. Labels for this Fleet.
  final Map<String, String> labels;

  /// The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  final String name;

  /// State of the namespace resource.
  final FleetLifecycleStateResponse3 state;

  /// Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the Fleet was last updated.
  final String updateTime;

  GetFleetResult3({
    required this.createTime,
    required this.defaultClusterConfig,
    required this.deleteTime,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['defaultClusterConfig'] = defaultClusterConfig.toMap();
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetFleetResult3.fromMap(Map<String, dynamic> map) {
    return GetFleetResult3(
      createTime: map['createTime'] as String,
      defaultClusterConfig: DefaultClusterConfigResponse3.fromMap(
          (map['defaultClusterConfig'] as Map).cast<String, dynamic>()),
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: FleetLifecycleStateResponse3.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

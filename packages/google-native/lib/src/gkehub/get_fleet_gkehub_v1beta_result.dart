// ignore_for_file: unused_element, unnecessary_cast

import 'default_cluster_config_response_gkehub_v1beta.dart';
import 'fleet_lifecycle_state_response_gkehub_v1beta.dart';

/// Result data returned by getFleet.
class GetFleetGkehubV1betaResult {
  /// When the Fleet was created.
  final String createTime;

  /// Optional. The default cluster configurations to apply across the fleet.
  final DefaultClusterConfigResponseGkehubV1beta defaultClusterConfig;

  /// When the Fleet was deleted.
  final String deleteTime;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final String displayName;

  /// Optional. Labels for this Fleet.
  final Map<String, String> labels;

  /// The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  final String name;

  /// State of the namespace resource.
  final FleetLifecycleStateResponseGkehubV1beta state;

  /// Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the Fleet was last updated.
  final String updateTime;

  /// Creates a new [GetFleetGkehubV1betaResult].
  /// [createTime] When the Fleet was created.
  /// [defaultClusterConfig] Optional. The default cluster configurations to apply across the fleet.
  /// [deleteTime] When the Fleet was deleted.
  /// [displayName] Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  /// [labels] Optional. Labels for this Fleet.
  /// [name] The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  /// [state] State of the namespace resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the Fleet was last updated.
  GetFleetGkehubV1betaResult({
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
    return <String, dynamic>{
      'createTime': createTime,
      'defaultClusterConfig': defaultClusterConfig.toMap(),
      'deleteTime': deleteTime,
      'displayName': displayName,
      'labels': labels,
      'name': name,
      'state': state.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetFleetGkehubV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetFleetGkehubV1betaResult(
      createTime: map['createTime'] as String,
      defaultClusterConfig: DefaultClusterConfigResponseGkehubV1beta.fromMap(
        (map['defaultClusterConfig'] as Map).cast<String, dynamic>(),
      ),
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: FleetLifecycleStateResponseGkehubV1beta.fromMap(
        (map['state'] as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

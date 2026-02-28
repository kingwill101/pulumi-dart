// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_response.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicyResponse {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final String resourceVersion;

  /// Specifies the maintenance window in which maintenance may be performed.
  final MaintenanceWindowResponse window;

  /// Creates a new [MaintenancePolicyResponse].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  MaintenancePolicyResponse({
    required this.resourceVersion,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceVersion'] = resourceVersion;
    map['window'] = window.toMap();
    return map;
  }

  factory MaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponse(
      resourceVersion: map['resourceVersion'] as String,
      window: MaintenanceWindowResponse.fromMap(
          (map['window'] as Map).cast<String, dynamic>()),
    );
  }
}

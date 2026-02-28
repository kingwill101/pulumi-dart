// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicy {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final String? resourceVersion;

  /// Specifies the maintenance window in which maintenance may be performed.
  final MaintenanceWindow? window;

  /// Creates a new [MaintenancePolicy].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  MaintenancePolicy({
    this.resourceVersion,
    this.window,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceVersionValue = resourceVersion;
    if (resourceVersionValue != null) {
      map['resourceVersion'] = resourceVersionValue;
    }
    final windowValue = window;
    if (windowValue != null) {
      map['window'] = windowValue.toMap();
    }
    return map;
  }

  factory MaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicy(
      resourceVersion: map['resourceVersion'] == null
          ? null
          : map['resourceVersion'] as String,
      window: map['window'] == null
          ? null
          : MaintenanceWindow.fromMap(
              (map['window'] as Map).cast<String, dynamic>()),
    );
  }
}

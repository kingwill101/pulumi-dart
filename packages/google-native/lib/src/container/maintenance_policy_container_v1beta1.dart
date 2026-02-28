// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_container_v1beta1.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicyContainerV1beta1 {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final String? resourceVersion;
  /// Specifies the maintenance window in which maintenance may be performed.
  final MaintenanceWindowContainerV1beta1? window;

  /// Creates a new [MaintenancePolicyContainerV1beta1].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  MaintenancePolicyContainerV1beta1({
    this.resourceVersion,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': ?resourceVersion,
      'window': ?window == null ? null : window!.toMap(),
    };
  }

  factory MaintenancePolicyContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyContainerV1beta1(
      resourceVersion: map['resourceVersion'] == null ? null : map['resourceVersion'] as String,
      window: map['window'] == null ? null : MaintenanceWindowContainerV1beta1.fromMap((map['window'] as Map).cast<String, dynamic>()),
    );
  }
}


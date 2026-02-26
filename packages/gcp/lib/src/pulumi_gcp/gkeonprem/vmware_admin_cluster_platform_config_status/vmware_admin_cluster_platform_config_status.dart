// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_admin_cluster_platform_config_status_condition/vmware_admin_cluster_platform_config_status_condition.dart';

class VmwareAdminClusterPlatformConfigStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final List<VmwareAdminClusterPlatformConfigStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  VmwareAdminClusterPlatformConfigStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.encodeList<
          VmwareAdminClusterPlatformConfigStatusCondition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    return map;
  }

  factory VmwareAdminClusterPlatformConfigStatus.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfigStatus(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<VmwareAdminClusterPlatformConfigStatusCondition>(
              map['conditions'],
              (value) =>
                  VmwareAdminClusterPlatformConfigStatusCondition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_admin_cluster_platform_config_bundle_status_condition/vmware_admin_cluster_platform_config_bundle_status_condition.dart';

class VmwareAdminClusterPlatformConfigBundleStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final List<VmwareAdminClusterPlatformConfigBundleStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  VmwareAdminClusterPlatformConfigBundleStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.encodeList<
          VmwareAdminClusterPlatformConfigBundleStatusCondition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    return map;
  }

  factory VmwareAdminClusterPlatformConfigBundleStatus.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfigBundleStatus(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<
                  VmwareAdminClusterPlatformConfigBundleStatusCondition>(
              map['conditions'],
              (value) =>
                  VmwareAdminClusterPlatformConfigBundleStatusCondition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}

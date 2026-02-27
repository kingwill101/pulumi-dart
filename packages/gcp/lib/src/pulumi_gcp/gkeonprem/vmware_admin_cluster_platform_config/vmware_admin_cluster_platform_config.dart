// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_admin_cluster_platform_config_bundle/vmware_admin_cluster_platform_config_bundle.dart';
import '../vmware_admin_cluster_platform_config_status/vmware_admin_cluster_platform_config_status.dart';

class VmwareAdminClusterPlatformConfig {
  /// (Output)
  /// The list of bundles installed in the admin cluster.
  /// Structure is documented below.
  final List<VmwareAdminClusterPlatformConfigBundle>? bundles;

  /// (Output)
  /// The platform version e.g. 1.13.2.
  final String? platformVersion;

  /// The required platform version e.g. 1.13.1.
  /// If the current platform version is lower than the target version,
  /// the platform version will be updated to the target version.
  /// If the target version is not installed in the platform
  /// (bundle versions), download the target version bundle.
  final String? requiredPlatformVersion;

  /// (Output)
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_platform_config_bundles_status"></a>The `status` block contains:
  final List<VmwareAdminClusterPlatformConfigStatus>? statuses;

  VmwareAdminClusterPlatformConfig({
    this.bundles,
    this.platformVersion,
    this.requiredPlatformVersion,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundlesValue = bundles;
    if (bundlesValue != null) {
      map['bundles'] = Input.encodeList<VmwareAdminClusterPlatformConfigBundle,
          Map<String, dynamic>>(bundlesValue, (value) => value.toMap());
    }
    final platformVersionValue = platformVersion;
    if (platformVersionValue != null) {
      map['platformVersion'] = platformVersionValue;
    }
    final requiredPlatformVersionValue = requiredPlatformVersion;
    if (requiredPlatformVersionValue != null) {
      map['requiredPlatformVersion'] = requiredPlatformVersionValue;
    }
    final statusesValue = statuses;
    if (statusesValue != null) {
      map['statuses'] = Input.encodeList<VmwareAdminClusterPlatformConfigStatus,
          Map<String, dynamic>>(statusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareAdminClusterPlatformConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfig(
      bundles: map['bundles'] == null
          ? null
          : Input.decodeList<VmwareAdminClusterPlatformConfigBundle>(
              map['bundles'],
              (value) => VmwareAdminClusterPlatformConfigBundle.fromMap(
                  (value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      requiredPlatformVersion: map['requiredPlatformVersion'] == null
          ? null
          : map['requiredPlatformVersion'] as String,
      statuses: map['statuses'] == null
          ? null
          : Input.decodeList<VmwareAdminClusterPlatformConfigStatus>(
              map['statuses'],
              (value) => VmwareAdminClusterPlatformConfigStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

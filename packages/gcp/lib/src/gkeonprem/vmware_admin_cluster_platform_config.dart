// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_bundle.dart';
import 'vmware_admin_cluster_platform_config_status.dart';

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

  /// Creates a new [VmwareAdminClusterPlatformConfig].
  /// [bundles] (Output)
  /// [platformVersion] (Output)
  /// [requiredPlatformVersion] The required platform version e.g. 1.13.1.
  /// [statuses] (Output)
  VmwareAdminClusterPlatformConfig({
    this.bundles,
    this.platformVersion,
    this.requiredPlatformVersion,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?bundles == null
          ? null
          : pulumi.Input.encodeList<
              VmwareAdminClusterPlatformConfigBundle,
              Map<String, dynamic>
            >(bundles!, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'requiredPlatformVersion': ?requiredPlatformVersion,
      'statuses': ?statuses == null
          ? null
          : pulumi.Input.encodeList<
              VmwareAdminClusterPlatformConfigStatus,
              Map<String, dynamic>
            >(statuses!, (value) => value.toMap()),
    };
  }

  factory VmwareAdminClusterPlatformConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfig(
      bundles: map['bundles'] == null
          ? null
          : pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigBundle>(
              map['bundles'],
              (value) => VmwareAdminClusterPlatformConfigBundle.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      requiredPlatformVersion: map['requiredPlatformVersion'] == null
          ? null
          : map['requiredPlatformVersion'] as String,
      statuses: map['statuses'] == null
          ? null
          : pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigStatus>(
              map['statuses'],
              (value) => VmwareAdminClusterPlatformConfigStatus.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

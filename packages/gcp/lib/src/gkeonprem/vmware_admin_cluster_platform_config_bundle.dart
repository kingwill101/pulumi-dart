// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_bundle_status.dart';

class VmwareAdminClusterPlatformConfigBundle {
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  final List<VmwareAdminClusterPlatformConfigBundleStatus>? statuses;

  /// The version of the bundle.
  final String? version;

  /// Creates a new [VmwareAdminClusterPlatformConfigBundle].
  /// [statuses] ResourceStatus representing detailed cluster state.
  /// [version] The version of the bundle.
  VmwareAdminClusterPlatformConfigBundle({this.statuses, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?statuses == null
          ? null
          : pulumi.Input.encodeList<
              VmwareAdminClusterPlatformConfigBundleStatus,
              Map<String, dynamic>
            >(statuses!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory VmwareAdminClusterPlatformConfigBundle.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterPlatformConfigBundle(
      statuses: map['statuses'] == null
          ? null
          : pulumi
                .Input.decodeList<VmwareAdminClusterPlatformConfigBundleStatus>(
              map['statuses'],
              (value) => VmwareAdminClusterPlatformConfigBundleStatus.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_cross_region_copy_info_region.dart';

class EnterpriseSnapshotPolicyCrossRegionCopyInfo {
  /// Enable Snapshot replication.
  final bool? enabled;
  /// Destination region for Snapshot replication. See `regions` below.
  final List<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion>? regions;

  /// Creates a new [EnterpriseSnapshotPolicyCrossRegionCopyInfo].
  /// [enabled] Enable Snapshot replication.
  /// [regions] Destination region for Snapshot replication. See `regions` below.
  EnterpriseSnapshotPolicyCrossRegionCopyInfo({
    this.enabled,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'regions': ?regions == null ? null : pulumi.Input.encodeList<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion, Map<String, dynamic>>(regions!, (value) => value.toMap()),
    };
  }

  factory EnterpriseSnapshotPolicyCrossRegionCopyInfo.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyCrossRegionCopyInfo(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      regions: map['regions'] == null ? null : pulumi.Input.decodeList<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion>(map['regions'], (value) => EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


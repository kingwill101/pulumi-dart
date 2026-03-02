// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_cross_region_copy_info_region.dart';

class EnterpriseSnapshotPolicyCrossRegionCopyInfo {
  /// Enable Snapshot replication.
  final pulumi.Input<bool>? enabled;
  /// Destination region for Snapshot replication. See `regions` below.
  final pulumi.Input<List<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion>>? regions;

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
      'regions': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseSnapshotPolicyCrossRegionCopyInfo.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyCrossRegionCopyInfo(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      regions: map['regions'] == null ? null : (pulumi.Input.decodeList<EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion>(map['regions']!, (value) => EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


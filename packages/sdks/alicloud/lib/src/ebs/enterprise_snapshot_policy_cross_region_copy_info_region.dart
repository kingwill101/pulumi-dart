// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion {
  /// Destination region ID.
  final pulumi.Input<String>? regionId;
  /// Number of days of snapshot retention for replication.
  final pulumi.Input<int>? retainDays;

  /// Creates a new [EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion].
  /// [regionId] Destination region ID.
  /// [retainDays] Number of days of snapshot retention for replication.
  const EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion({
    this.regionId,
    this.retainDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'retainDays': ?retainDays,
    };
  }

  factory EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion(
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainDays: (() { final guardedValue = map['retainDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


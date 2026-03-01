// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion {
  /// Destination region ID.
  final String? regionId;
  /// Number of days of snapshot retention for replication.
  final int? retainDays;

  /// Creates a new [EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion].
  /// [regionId] Destination region ID.
  /// [retainDays] Number of days of snapshot retention for replication.
  EnterpriseSnapshotPolicyCrossRegionCopyInfoRegion({
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
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      retainDays: map['retainDays'] == null ? null : map['retainDays'] as int,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class ClickHouseEnterpriseDbClusterMultiZone {
  /// List of vSwitch IDs.
  final List<String>? vswitchIds;
  /// Zone ID.
  final String? zoneId;

  /// Creates a new [ClickHouseEnterpriseDbClusterMultiZone].
  /// [vswitchIds] List of vSwitch IDs.
  /// [zoneId] Zone ID.
  ClickHouseEnterpriseDbClusterMultiZone({
    this.vswitchIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchIds': ?vswitchIds,
      'zoneId': ?zoneId,
    };
  }

  factory ClickHouseEnterpriseDbClusterMultiZone.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterMultiZone(
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


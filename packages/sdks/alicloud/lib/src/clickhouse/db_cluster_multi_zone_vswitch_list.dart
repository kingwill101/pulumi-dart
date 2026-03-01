// ignore_for_file: unused_element, unnecessary_cast


class DbClusterMultiZoneVswitchList {
  /// The ID of the vswitch.
  final String vswitchId;
  /// The zone ID of the vswitch.
  final String? zoneId;

  /// Creates a new [DbClusterMultiZoneVswitchList].
  /// [vswitchId] The ID of the vswitch.
  /// [zoneId] The zone ID of the vswitch.
  DbClusterMultiZoneVswitchList({
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DbClusterMultiZoneVswitchList.fromMap(Map<String, dynamic> map) {
    return DbClusterMultiZoneVswitchList(
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class StarRocksInstanceVswitch {
  /// ID of VSwitch.
  final String vswitchId;
  /// Zone ID of VSwitch.
  final String? zoneId;

  /// Creates a new [StarRocksInstanceVswitch].
  /// [vswitchId] ID of VSwitch.
  /// [zoneId] Zone ID of VSwitch.
  StarRocksInstanceVswitch({
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory StarRocksInstanceVswitch.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceVswitch(
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


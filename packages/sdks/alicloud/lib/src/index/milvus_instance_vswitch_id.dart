// ignore_for_file: unused_element, unnecessary_cast


class MilvusInstanceVswitchId {
  /// VSwitch id, which must correspond to the zone id.
  final String? vswId;
  /// The availability zone must correspond to the vswId.
  final String? zoneId;

  /// Creates a new [MilvusInstanceVswitchId].
  /// [vswId] VSwitch id, which must correspond to the zone id.
  /// [zoneId] The availability zone must correspond to the vswId.
  MilvusInstanceVswitchId({
    this.vswId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswId': ?vswId,
      'zoneId': ?zoneId,
    };
  }

  factory MilvusInstanceVswitchId.fromMap(Map<String, dynamic> map) {
    return MilvusInstanceVswitchId(
      vswId: map['vswId'] == null ? null : map['vswId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


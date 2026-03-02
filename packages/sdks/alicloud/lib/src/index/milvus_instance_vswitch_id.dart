// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MilvusInstanceVswitchId {
  /// VSwitch id, which must correspond to the zone id.
  final pulumi.Input<String>? vswId;
  /// The availability zone must correspond to the vswId.
  final pulumi.Input<String>? zoneId;

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
      vswId: map['vswId'] == null ? null : (map['vswId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}


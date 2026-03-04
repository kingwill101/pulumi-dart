// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StarRocksInstanceVswitch {
  /// ID of VSwitch.
  final pulumi.Input<String> vswitchId;

  /// Zone ID of VSwitch.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [StarRocksInstanceVswitch].
  /// [vswitchId] ID of VSwitch.
  /// [zoneId] Zone ID of VSwitch.
  StarRocksInstanceVswitch({required this.vswitchId, this.zoneId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vswitchId': vswitchId, 'zoneId': ?zoneId};
  }

  factory StarRocksInstanceVswitch.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceVswitch(
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

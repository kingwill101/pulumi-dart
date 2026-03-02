// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceVswitch {
  /// ID of VSwitch.
  final pulumi.Input<String> vswitchId;
  /// Zone ID of VSwitch.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceVswitch].
  /// [vswitchId] ID of VSwitch.
  /// [zoneId] Zone ID of VSwitch.
  InstanceVswitch({
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceVswitch.fromMap(Map<String, dynamic> map) {
    return InstanceVswitch(
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}


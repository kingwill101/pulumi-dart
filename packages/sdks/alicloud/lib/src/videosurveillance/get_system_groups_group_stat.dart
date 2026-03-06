// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSystemGroupsGroupStat {
  /// The total number of devices in the group.
  final pulumi.Input<String> deviceNum;
  /// The total number of smart devices in the group.
  final pulumi.Input<String> iedNum;
  /// The total number of cameras in the group.
  final pulumi.Input<String> ipcNum;
  /// The total number of platforms in the group.
  final pulumi.Input<String> platformNum;

  /// Creates a new [GetSystemGroupsGroupStat].
  /// [deviceNum] The total number of devices in the group.
  /// [iedNum] The total number of smart devices in the group.
  /// [ipcNum] The total number of cameras in the group.
  /// [platformNum] The total number of platforms in the group.
  const GetSystemGroupsGroupStat({
    required this.deviceNum,
    required this.iedNum,
    required this.ipcNum,
    required this.platformNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceNum': deviceNum,
      'iedNum': iedNum,
      'ipcNum': ipcNum,
      'platformNum': platformNum,
    };
  }

  factory GetSystemGroupsGroupStat.fromMap(Map<String, dynamic> map) {
    return GetSystemGroupsGroupStat(
      deviceNum: pulumi.Input.fromValue(map['deviceNum'] as String),
      iedNum: pulumi.Input.fromValue(map['iedNum'] as String),
      ipcNum: pulumi.Input.fromValue(map['ipcNum'] as String),
      platformNum: pulumi.Input.fromValue(map['platformNum'] as String),
    );
  }
}


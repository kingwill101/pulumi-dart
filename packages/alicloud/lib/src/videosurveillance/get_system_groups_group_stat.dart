// ignore_for_file: unused_element, unnecessary_cast


class GetSystemGroupsGroupStat {
  /// The total number of devices in the group.
  final String deviceNum;
  /// The total number of smart devices in the group.
  final String iedNum;
  /// The total number of cameras in the group.
  final String ipcNum;
  /// The total number of platforms in the group.
  final String platformNum;

  /// Creates a new [GetSystemGroupsGroupStat].
  /// [deviceNum] The total number of devices in the group.
  /// [iedNum] The total number of smart devices in the group.
  /// [ipcNum] The total number of cameras in the group.
  /// [platformNum] The total number of platforms in the group.
  GetSystemGroupsGroupStat({
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
      deviceNum: map['deviceNum'] as String,
      iedNum: map['iedNum'] as String,
      ipcNum: map['ipcNum'] as String,
      platformNum: map['platformNum'] as String,
    );
  }
}


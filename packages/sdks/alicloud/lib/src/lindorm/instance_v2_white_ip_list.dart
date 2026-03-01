// ignore_for_file: unused_element, unnecessary_cast


class InstanceV2WhiteIpList {
  /// Group Name
  final String groupName;
  /// Whitelist information
  final String ipList;

  /// Creates a new [InstanceV2WhiteIpList].
  /// [groupName] Group Name
  /// [ipList] Whitelist information
  InstanceV2WhiteIpList({
    required this.groupName,
    required this.ipList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'ipList': ipList,
    };
  }

  factory InstanceV2WhiteIpList.fromMap(Map<String, dynamic> map) {
    return InstanceV2WhiteIpList(
      groupName: map['groupName'] as String,
      ipList: map['ipList'] as String,
    );
  }
}


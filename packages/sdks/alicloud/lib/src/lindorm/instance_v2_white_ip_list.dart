// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceV2WhiteIpList {
  /// Group Name
  final pulumi.Input<String> groupName;
  /// Whitelist information
  final pulumi.Input<String> ipList;

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
      groupName: (map['groupName'] as String).input(),
      ipList: (map['ipList'] as String).input(),
    );
  }
}


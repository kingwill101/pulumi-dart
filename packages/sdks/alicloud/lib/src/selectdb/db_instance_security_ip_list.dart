// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstanceSecurityIpList {
  /// Security group name.
  final pulumi.Input<String>? groupName;
  /// The tag of Security group.
  final pulumi.Input<String>? groupTag;
  /// The network type of Security group.
  final pulumi.Input<String>? listNetType;
  /// The IP list of Security group. Each single IP value should be Separated by comma.
  final pulumi.Input<String>? securityIpList;
  /// The IP address type. Valid values: `ipv4`, `ipv6` (not supported).
  final pulumi.Input<String>? securityIpType;

  /// Creates a new [DbInstanceSecurityIpList].
  /// [groupName] Security group name.
  /// [groupTag] The tag of Security group.
  /// [listNetType] The network type of Security group.
  /// [securityIpList] The IP list of Security group. Each single IP value should be Separated by comma.
  /// [securityIpType] The IP address type. Valid values: `ipv4`, `ipv6` (not supported).
  const DbInstanceSecurityIpList({
    this.groupName,
    this.groupTag,
    this.listNetType,
    this.securityIpList,
    this.securityIpType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'groupTag': ?groupTag,
      'listNetType': ?listNetType,
      'securityIpList': ?securityIpList,
      'securityIpType': ?securityIpType,
    };
  }

  factory DbInstanceSecurityIpList.fromMap(Map<String, dynamic> map) {
    return DbInstanceSecurityIpList(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupTag: (() { final guardedValue = map['groupTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listNetType: (() { final guardedValue = map['listNetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpList: (() { final guardedValue = map['securityIpList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpType: (() { final guardedValue = map['securityIpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


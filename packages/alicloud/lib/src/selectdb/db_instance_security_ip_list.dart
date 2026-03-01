// ignore_for_file: unused_element, unnecessary_cast


class DbInstanceSecurityIpList {
  /// Security group name.
  final String? groupName;
  /// The tag of Security group.
  final String? groupTag;
  /// The network type of Security group.
  final String? listNetType;
  /// The IP list of Security group. Each single IP value should be Separated by comma.
  final String? securityIpList;
  /// The IP address type. Valid values: `ipv4`, `ipv6` (not supported).
  final String? securityIpType;

  /// Creates a new [DbInstanceSecurityIpList].
  /// [groupName] Security group name.
  /// [groupTag] The tag of Security group.
  /// [listNetType] The network type of Security group.
  /// [securityIpList] The IP list of Security group. Each single IP value should be Separated by comma.
  /// [securityIpType] The IP address type. Valid values: `ipv4`, `ipv6` (not supported).
  DbInstanceSecurityIpList({
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
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      groupTag: map['groupTag'] == null ? null : map['groupTag'] as String,
      listNetType: map['listNetType'] == null ? null : map['listNetType'] as String,
      securityIpList: map['securityIpList'] == null ? null : map['securityIpList'] as String,
      securityIpType: map['securityIpType'] == null ? null : map['securityIpType'] as String,
    );
  }
}


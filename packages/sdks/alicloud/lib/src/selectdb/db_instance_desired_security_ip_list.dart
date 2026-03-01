// ignore_for_file: unused_element, unnecessary_cast


class DbInstanceDesiredSecurityIpList {
  /// Security group name.
  final String? groupName;
  /// The IP list of Security group. Each single IP value should be Separated by comma.
  final String? securityIpList;

  /// Creates a new [DbInstanceDesiredSecurityIpList].
  /// [groupName] Security group name.
  /// [securityIpList] The IP list of Security group. Each single IP value should be Separated by comma.
  DbInstanceDesiredSecurityIpList({
    this.groupName,
    this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory DbInstanceDesiredSecurityIpList.fromMap(Map<String, dynamic> map) {
    return DbInstanceDesiredSecurityIpList(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      securityIpList: map['securityIpList'] == null ? null : map['securityIpList'] as String,
    );
  }
}


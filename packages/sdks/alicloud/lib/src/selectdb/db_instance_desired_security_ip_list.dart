// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstanceDesiredSecurityIpList {
  /// Security group name.
  final pulumi.Input<String>? groupName;

  /// The IP list of Security group. Each single IP value should be Separated by comma.
  final pulumi.Input<String>? securityIpList;

  /// Creates a new [DbInstanceDesiredSecurityIpList].
  /// [groupName] Security group name.
  /// [securityIpList] The IP list of Security group. Each single IP value should be Separated by comma.
  DbInstanceDesiredSecurityIpList({this.groupName, this.securityIpList});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory DbInstanceDesiredSecurityIpList.fromMap(Map<String, dynamic> map) {
    return DbInstanceDesiredSecurityIpList(
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityIpList: (() {
        final guardedValue = map['securityIpList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

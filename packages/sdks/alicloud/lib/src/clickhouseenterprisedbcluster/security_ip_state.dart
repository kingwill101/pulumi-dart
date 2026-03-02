// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityIp resources.
class SecurityIpState {
  /// The cluster ID.
  final pulumi.Input<String>? dbInstanceId;
  /// The whitelist name.
  final pulumi.Input<String>? groupName;
  /// The IP address list under the whitelist group.
  final pulumi.Input<String>? securityIpList;

  /// Creates a new [SecurityIpState].
  /// [dbInstanceId] The cluster ID.
  /// [groupName] The whitelist name.
  /// [securityIpList] The IP address list under the whitelist group.
  SecurityIpState({
    this.dbInstanceId,
    this.groupName,
    this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'groupName': ?groupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory SecurityIpState.fromMap(Map<String, dynamic> map) {
    return SecurityIpState(
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      securityIpList: map['securityIpList'] == null ? null : (map['securityIpList'] as String).input(),
    );
  }
}


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
  const SecurityIpState({
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
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpList: (() { final guardedValue = map['securityIpList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


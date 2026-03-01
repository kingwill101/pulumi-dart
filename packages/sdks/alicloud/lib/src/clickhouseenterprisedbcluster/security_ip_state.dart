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
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? securityIpList,
  }) :
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      securityIpList = pulumi.Input.asOptionalInput<String>(securityIpList);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'groupName': ?groupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory SecurityIpState.fromMap(Map<String, dynamic> map) {
    return SecurityIpState(
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      securityIpList: map['securityIpList'] == null ? null : pulumi.Output.create<String>(map['securityIpList'] as String),
    );
  }
}


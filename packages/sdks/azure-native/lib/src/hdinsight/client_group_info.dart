// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of AAD security group.
class ClientGroupInfo {
  /// The AAD security group id.
  final pulumi.Input<String>? groupId;
  /// The AAD security group name.
  final pulumi.Input<String>? groupName;

  /// Creates a new [ClientGroupInfo].
  /// [groupId] The AAD security group id.
  /// [groupName] The AAD security group name.
  ClientGroupInfo({
    this.groupId,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory ClientGroupInfo.fromMap(Map<String, dynamic> map) {
    return ClientGroupInfo(
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
    );
  }
}


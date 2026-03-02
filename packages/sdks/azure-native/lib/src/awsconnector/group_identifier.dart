// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GroupIdentifier
class GroupIdentifier {
  /// <p>The ID of the security group.</p>
  final pulumi.Input<String>? groupId;
  /// <p>The name of the security group.</p>
  final pulumi.Input<String>? groupName;

  /// Creates a new [GroupIdentifier].
  /// [groupId] <p>The ID of the security group.</p>
  /// [groupName] <p>The name of the security group.</p>
  GroupIdentifier({
    this.groupId,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory GroupIdentifier.fromMap(Map<String, dynamic> map) {
    return GroupIdentifier(
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
    );
  }
}


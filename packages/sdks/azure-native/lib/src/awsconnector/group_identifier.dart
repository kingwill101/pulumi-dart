// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GroupIdentifier
class GroupIdentifier {
  /// &lt;p&gt;The ID of the security group.&lt;/p&gt;
  final pulumi.Input<String>? groupId;
  /// &lt;p&gt;The name of the security group.&lt;/p&gt;
  final pulumi.Input<String>? groupName;

  /// Creates a new [GroupIdentifier].
  /// [groupId] &lt;p&gt;The ID of the security group.&lt;/p&gt;
  /// [groupName] &lt;p&gt;The name of the security group.&lt;/p&gt;
  const GroupIdentifier({
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
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


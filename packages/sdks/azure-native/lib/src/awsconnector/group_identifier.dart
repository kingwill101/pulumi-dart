// ignore_for_file: unused_element, unnecessary_cast


/// Definition of GroupIdentifier
class GroupIdentifier {
  /// <p>The ID of the security group.</p>
  final String? groupId;
  /// <p>The name of the security group.</p>
  final String? groupName;

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
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
    );
  }
}


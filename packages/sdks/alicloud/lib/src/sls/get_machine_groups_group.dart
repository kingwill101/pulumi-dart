// ignore_for_file: unused_element, unnecessary_cast


class GetMachineGroupsGroup {
  /// Machine Group name
  final String groupName;
  /// The ID of the resource supplied above.
  final String id;

  /// Creates a new [GetMachineGroupsGroup].
  /// [groupName] Machine Group name
  /// [id] The ID of the resource supplied above.
  GetMachineGroupsGroup({
    required this.groupName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'id': id,
    };
  }

  factory GetMachineGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetMachineGroupsGroup(
      groupName: map['groupName'] as String,
      id: map['id'] as String,
    );
  }
}


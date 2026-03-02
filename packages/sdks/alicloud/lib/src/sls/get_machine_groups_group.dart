// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMachineGroupsGroup {
  /// Machine Group name
  final pulumi.Input<String> groupName;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

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
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}


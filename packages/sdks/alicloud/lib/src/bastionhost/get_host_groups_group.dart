// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostGroupsGroup {
  /// Specify the New Host Group of Notes, Supports up to 500 Characters.
  final pulumi.Input<String> comment;
  /// Host Group ID.
  final pulumi.Input<String> hostGroupId;
  /// Specify the New Host Group Name, Supports up to 128 Characters.
  final pulumi.Input<String> hostGroupName;
  /// The ID of the Host Group.
  final pulumi.Input<String> id;
  /// Specify the New Host Group Where the Bastion Host ID of.
  final pulumi.Input<String> instanceId;

  /// Creates a new [GetHostGroupsGroup].
  /// [comment] Specify the New Host Group of Notes, Supports up to 500 Characters.
  /// [hostGroupId] Host Group ID.
  /// [hostGroupName] Specify the New Host Group Name, Supports up to 128 Characters.
  /// [id] The ID of the Host Group.
  /// [instanceId] Specify the New Host Group Where the Bastion Host ID of.
  GetHostGroupsGroup({
    required this.comment,
    required this.hostGroupId,
    required this.hostGroupName,
    required this.id,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'hostGroupId': hostGroupId,
      'hostGroupName': hostGroupName,
      'id': id,
      'instanceId': instanceId,
    };
  }

  factory GetHostGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetHostGroupsGroup(
      comment: (map['comment'] as String).input(),
      hostGroupId: (map['hostGroupId'] as String).input(),
      hostGroupName: (map['hostGroupName'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}


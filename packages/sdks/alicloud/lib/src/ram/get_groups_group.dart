// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// Comments of the group.
  final pulumi.Input<String> comments;
  /// Name of the group.
  final pulumi.Input<String> name;

  /// Creates a new [GetGroupsGroup].
  /// [comments] Comments of the group.
  /// [name] Name of the group.
  GetGroupsGroup({
    required this.comments,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'name': name,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      comments: (map['comments'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}


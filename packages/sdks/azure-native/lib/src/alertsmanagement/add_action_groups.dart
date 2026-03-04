// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Add action groups to alert processing rule.
class AddActionGroups {
  /// List of action group Ids to add to alert processing rule.
  final pulumi.Input<List<String>> actionGroupIds;

  /// Action that should be applied.
  /// Expected value is 'AddActionGroups'.
  final pulumi.Input<String> actionType;

  /// Creates a new [AddActionGroups].
  /// [actionGroupIds] List of action group Ids to add to alert processing rule.
  /// [actionType] Action that should be applied.
  AddActionGroups({required this.actionGroupIds, required this.actionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupIds': actionGroupIds,
      'actionType': actionType,
    };
  }

  factory AddActionGroups.fromMap(Map<String, dynamic> map) {
    return AddActionGroups(
      actionGroupIds: pulumi.Input.fromValue(
        (map['actionGroupIds'] as List).cast<String>(),
      ),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
    );
  }
}

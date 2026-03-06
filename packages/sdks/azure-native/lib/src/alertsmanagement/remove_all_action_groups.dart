// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if all action groups should be removed.
class RemoveAllActionGroups {
  /// Action that should be applied.
  /// Expected value is 'RemoveAllActionGroups'.
  final pulumi.Input<String> actionType;

  /// Creates a new [RemoveAllActionGroups].
  /// [actionType] Action that should be applied.
  const RemoveAllActionGroups({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory RemoveAllActionGroups.fromMap(Map<String, dynamic> map) {
    return RemoveAllActionGroups(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
    );
  }
}


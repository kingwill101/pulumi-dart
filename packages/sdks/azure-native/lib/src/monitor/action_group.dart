// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A pointer to an Azure Action Group.
class ActionGroup {
  /// The resource ID of the Action Group. This cannot be null or empty.
  final pulumi.Input<String> actionGroupId;
  /// the dictionary of custom properties to include with the post operation. These data are appended to the webhook payload.
  final pulumi.Input<Map<String, String>>? webhookProperties;

  /// Creates a new [ActionGroup].
  /// [actionGroupId] The resource ID of the Action Group. This cannot be null or empty.
  /// [webhookProperties] the dictionary of custom properties to include with the post operation. These data are appended to the webhook payload.
  ActionGroup({
    required this.actionGroupId,
    this.webhookProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'webhookProperties': ?webhookProperties,
    };
  }

  factory ActionGroup.fromMap(Map<String, dynamic> map) {
    return ActionGroup(
      actionGroupId: (map['actionGroupId'] as String).input(),
      webhookProperties: map['webhookProperties'] == null ? null : ((map['webhookProperties'] as Map).cast<String, String>()).input(),
    );
  }
}


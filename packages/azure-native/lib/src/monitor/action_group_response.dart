// ignore_for_file: unused_element, unnecessary_cast


/// A pointer to an Azure Action Group.
class ActionGroupResponse {
  /// The resource ID of the Action Group. This cannot be null or empty.
  final String actionGroupId;
  /// the dictionary of custom properties to include with the post operation. These data are appended to the webhook payload.
  final Map<String, String>? webhookProperties;

  /// Creates a new [ActionGroupResponse].
  /// [actionGroupId] The resource ID of the Action Group. This cannot be null or empty.
  /// [webhookProperties] the dictionary of custom properties to include with the post operation. These data are appended to the webhook payload.
  ActionGroupResponse({
    required this.actionGroupId,
    this.webhookProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'webhookProperties': ?webhookProperties,
    };
  }

  factory ActionGroupResponse.fromMap(Map<String, dynamic> map) {
    return ActionGroupResponse(
      actionGroupId: map['actionGroupId'] as String,
      webhookProperties: map['webhookProperties'] == null ? null : (map['webhookProperties'] as Map).cast<String, String>(),
    );
  }
}


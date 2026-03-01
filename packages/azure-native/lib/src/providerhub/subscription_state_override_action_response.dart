// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionStateOverrideActionResponse {
  /// The action.
  final String action;
  /// The state.
  final String state;

  /// Creates a new [SubscriptionStateOverrideActionResponse].
  /// [action] The action.
  /// [state] The state.
  SubscriptionStateOverrideActionResponse({
    required this.action,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'state': state,
    };
  }

  factory SubscriptionStateOverrideActionResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionStateOverrideActionResponse(
      action: map['action'] as String,
      state: map['state'] as String,
    );
  }
}


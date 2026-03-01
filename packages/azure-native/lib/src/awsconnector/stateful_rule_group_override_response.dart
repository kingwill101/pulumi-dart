// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatefulRuleGroupOverride
class StatefulRuleGroupOverrideResponse {
  /// Property action
  final String? action;

  /// Creates a new [StatefulRuleGroupOverrideResponse].
  /// [action] Property action
  StatefulRuleGroupOverrideResponse({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory StatefulRuleGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupOverrideResponse(
      action: map['action'] == null ? null : map['action'] as String,
    );
  }
}


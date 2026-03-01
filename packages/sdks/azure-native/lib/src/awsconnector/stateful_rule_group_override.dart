// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatefulRuleGroupOverride
class StatefulRuleGroupOverride {
  /// Property action
  final String? action;

  /// Creates a new [StatefulRuleGroupOverride].
  /// [action] Property action
  StatefulRuleGroupOverride({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory StatefulRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupOverride(
      action: map['action'] == null ? null : map['action'] as String,
    );
  }
}


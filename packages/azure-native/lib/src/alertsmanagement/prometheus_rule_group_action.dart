// ignore_for_file: unused_element, unnecessary_cast


/// An alert action. Only relevant for alerts.
class PrometheusRuleGroupAction {
  /// The resource id of the action group to use.
  final String? actionGroupId;
  /// The properties of an action group object.
  final Map<String, String>? actionProperties;

  /// Creates a new [PrometheusRuleGroupAction].
  /// [actionGroupId] The resource id of the action group to use.
  /// [actionProperties] The properties of an action group object.
  PrometheusRuleGroupAction({
    this.actionGroupId,
    this.actionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': ?actionGroupId,
      'actionProperties': ?actionProperties,
    };
  }

  factory PrometheusRuleGroupAction.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleGroupAction(
      actionGroupId: map['actionGroupId'] == null ? null : map['actionGroupId'] as String,
      actionProperties: map['actionProperties'] == null ? null : (map['actionProperties'] as Map).cast<String, String>(),
    );
  }
}


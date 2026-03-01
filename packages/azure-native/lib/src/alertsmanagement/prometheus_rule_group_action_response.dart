// ignore_for_file: unused_element, unnecessary_cast


/// An alert action. Only relevant for alerts.
class PrometheusRuleGroupActionResponse {
  /// The resource id of the action group to use.
  final String? actionGroupId;
  /// The properties of an action group object.
  final Map<String, String>? actionProperties;

  /// Creates a new [PrometheusRuleGroupActionResponse].
  /// [actionGroupId] The resource id of the action group to use.
  /// [actionProperties] The properties of an action group object.
  PrometheusRuleGroupActionResponse({
    this.actionGroupId,
    this.actionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': ?actionGroupId,
      'actionProperties': ?actionProperties,
    };
  }

  factory PrometheusRuleGroupActionResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleGroupActionResponse(
      actionGroupId: map['actionGroupId'] == null ? null : map['actionGroupId'] as String,
      actionProperties: map['actionProperties'] == null ? null : (map['actionProperties'] as Map).cast<String, String>(),
    );
  }
}


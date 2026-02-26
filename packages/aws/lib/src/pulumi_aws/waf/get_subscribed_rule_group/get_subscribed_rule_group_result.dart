// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSubscribedRuleGroup.
class GetSubscribedRuleGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? metricName;
  final String? name;

  GetSubscribedRuleGroupResult({
    required this.id,
    this.metricName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GetSubscribedRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupResult(
      id: map['id'] as String,
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

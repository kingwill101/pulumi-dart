// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSubscribedRuleGroup.
class GetSubscribedRuleGroupWafregionalResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? metricName;
  final String? name;
  final String region;

  GetSubscribedRuleGroupWafregionalResult({
    required this.id,
    this.metricName,
    this.name,
    required this.region,
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
    map['region'] = region;
    return map;
  }

  factory GetSubscribedRuleGroupWafregionalResult.fromMap(
      Map<String, dynamic> map) {
    return GetSubscribedRuleGroupWafregionalResult(
      id: map['id'] as String,
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
    );
  }
}

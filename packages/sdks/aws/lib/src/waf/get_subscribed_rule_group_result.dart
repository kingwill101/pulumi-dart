// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscribedRuleGroup.
class GetSubscribedRuleGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? metricName;
  final String? name;

  /// Creates a new [GetSubscribedRuleGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metricName] Optional.
  /// [name] Optional.
  GetSubscribedRuleGroupResult({
    required this.id,
    this.metricName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'metricName': ?metricName,
      'name': ?name,
    };
  }

  factory GetSubscribedRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupResult(
      id: map['id'] as String,
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


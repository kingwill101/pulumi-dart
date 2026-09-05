// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscribedRuleGroup.
class GetSubscribedRuleGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? metricName;
  final String? name;
  final String? region;

  /// Creates a new [GetSubscribedRuleGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metricName] Optional.
  /// [name] Optional.
  /// [region] Optional.
  const GetSubscribedRuleGroupResult({
    this.id,
    this.metricName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'metricName': ?metricName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetSubscribedRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

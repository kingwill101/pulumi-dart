// ignore_for_file: unused_element, unnecessary_cast

class RecommendationPreferencesScope {
  /// The name of the scope. Valid values: `Organization`, `AccountId`, `ResourceArn`.
  final String name;

  /// The value of the scope. `ALL_ACCOUNTS` for `Organization` scopes, AWS account ID for `AccountId` scopes, ARN of an EC2 instance or an Auto Scaling group for `ResourceArn` scopes.
  final String value;

  RecommendationPreferencesScope({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory RecommendationPreferencesScope.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesScope(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

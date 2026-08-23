// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationPreferencesScope {
  /// The name of the scope. Valid values: `Organization`, `AccountId`, `ResourceArn`.
  final pulumi.Input<String> name;
  /// The value of the scope. `ALL_ACCOUNTS` for `Organization` scopes, AWS account ID for `AccountId` scopes, ARN of an EC2 instance or an Auto Scaling group for `ResourceArn` scopes.
  final pulumi.Input<String> value;

  /// Creates a new [RecommendationPreferencesScope].
  /// [name] The name of the scope. Valid values: `Organization`, `AccountId`, `ResourceArn`.
  /// [value] The value of the scope. `ALL_ACCOUNTS` for `Organization` scopes, AWS account ID for `AccountId` scopes, ARN of an EC2 instance or an Auto Scaling group for `ResourceArn` scopes.
  const RecommendationPreferencesScope({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RecommendationPreferencesScope.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesScope(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPoliciesAccessPolicy {
  /// ARN of the access policy.
  final pulumi.Input<String> arn;
  /// Name of the access policy.
  final pulumi.Input<String> name;

  /// Creates a new [GetAccessPoliciesAccessPolicy].
  /// [arn] ARN of the access policy.
  /// [name] Name of the access policy.
  const GetAccessPoliciesAccessPolicy({
    required this.arn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'name': name,
    };
  }

  factory GetAccessPoliciesAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetAccessPoliciesAccessPolicy(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServerlessSecurityPolicy.
class GetServerlessSecurityPolicyArgs {
  /// Name of the policy
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Type of security policy. One of `encryption` or `network`.
  final pulumi.Input<String> type;

  GetServerlessSecurityPolicyArgs({
    required this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetServerlessSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityPolicyArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}

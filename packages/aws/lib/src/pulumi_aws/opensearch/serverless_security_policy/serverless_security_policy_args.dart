// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServerlessSecurityPolicy.
class ServerlessSecurityPolicyArgs {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final pulumi.Input<String>? description;

  /// Name of the policy.
  final pulumi.Input<String>? name;

  /// JSON policy document to use as the content for the new policy
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Type of security policy. One of `encryption` or `network`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  ServerlessSecurityPolicyArgs({
    this.description,
    this.name,
    required this.policy,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory ServerlessSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityPolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}

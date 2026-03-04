// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_serverless_security_policy_serverless_security_policy_args_doc}
/// The set of arguments for ServerlessSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_security_policy_serverless_security_policy_args_doc}
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

  /// Creates a new [ServerlessSecurityPolicyArgs].
  /// [description] Description of the policy. Typically used to store information about the permissions defined in the policy.
  /// [name] Name of the policy.
  /// [policy] JSON policy document to use as the content for the new policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of security policy. One of `encryption` or `network`.
  ServerlessSecurityPolicyArgs({
    this.description,
    this.name,
    required this.policy,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policy': policy,
      'region': ?region,
      'type': type,
    };
  }

  factory ServerlessSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityPolicyArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

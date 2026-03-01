// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerlessSecurityPolicy resources.
class ServerlessSecurityPolicyState {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final pulumi.Input<String>? description;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON policy document to use as the content for the new policy
  final pulumi.Input<String>? policy;
  /// Version of the policy.
  final pulumi.Input<String>? policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of security policy. One of `encryption` or `network`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ServerlessSecurityPolicyState].
  /// [description] Description of the policy. Typically used to store information about the permissions defined in the policy.
  /// [name] Name of the policy.
  /// [policy] JSON policy document to use as the content for the new policy
  /// [policyVersion] Version of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of security policy. One of `encryption` or `network`.
  ServerlessSecurityPolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? policyVersion,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      policyVersion = pulumi.Input.asOptionalInput<String>(policyVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policy': ?policy,
      'policyVersion': ?policyVersion,
      'region': ?region,
      'type': ?type,
    };
  }

  factory ServerlessSecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityPolicyState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      policyVersion: map['policyVersion'] == null ? null : pulumi.Output.create<String>(map['policyVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


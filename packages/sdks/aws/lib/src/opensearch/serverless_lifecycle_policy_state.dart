// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerlessLifecyclePolicy resources.
class ServerlessLifecyclePolicyState {
  /// Description of the policy.
  final pulumi.Input<String>? description;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON policy document to use as the content for the new policy.
  final pulumi.Input<String>? policy;
  /// Version of the policy.
  final pulumi.Input<String>? policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of lifecycle policy. Must be `retention`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ServerlessLifecyclePolicyState].
  /// [description] Description of the policy.
  /// [name] Name of the policy.
  /// [policy] JSON policy document to use as the content for the new policy.
  /// [policyVersion] Version of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of lifecycle policy. Must be `retention`.
  ServerlessLifecyclePolicyState({
    this.description,
    this.name,
    this.policy,
    this.policyVersion,
    this.region,
    this.type,
  });

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

  factory ServerlessLifecyclePolicyState.fromMap(Map<String, dynamic> map) {
    return ServerlessLifecyclePolicyState(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      policyVersion: map['policyVersion'] == null ? null : ((map['policyVersion'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}


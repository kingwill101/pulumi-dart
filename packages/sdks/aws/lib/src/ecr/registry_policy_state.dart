// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryPolicy resources.
class RegistryPolicyState {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID where the registry was created.
  final pulumi.Input<String>? registryId;

  /// Creates a new [RegistryPolicyState].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the registry was created.
  RegistryPolicyState({
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'registryId': ?registryId,
    };
  }

  factory RegistryPolicyState.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
    );
  }
}


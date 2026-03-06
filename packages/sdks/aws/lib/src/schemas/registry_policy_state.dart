// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryPolicy resources.
class RegistryPolicyState {
  /// Resource Policy for EventBridge Schema Registry
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of EventBridge Schema Registry
  final pulumi.Input<String>? registryName;

  /// Creates a new [RegistryPolicyState].
  /// [policy] Resource Policy for EventBridge Schema Registry
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryName] Name of EventBridge Schema Registry
  const RegistryPolicyState({
    this.policy,
    this.region,
    this.registryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'registryName': ?registryName,
    };
  }

  factory RegistryPolicyState.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


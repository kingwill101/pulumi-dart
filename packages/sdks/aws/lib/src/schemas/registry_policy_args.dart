// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schemas_registry_policy_registry_policy_args_doc}
/// The set of arguments for RegistryPolicy.
/// {@endtemplate}
/// {@macro pulumi_schemas_registry_policy_registry_policy_args_doc}
class RegistryPolicyArgs {
  /// Resource Policy for EventBridge Schema Registry
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of EventBridge Schema Registry
  final pulumi.Input<String> registryName;

  /// Creates a new [RegistryPolicyArgs].
  /// [policy] Resource Policy for EventBridge Schema Registry
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryName] Name of EventBridge Schema Registry
  RegistryPolicyArgs({
    required this.policy,
    this.region,
    required this.registryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'registryName': registryName,
    };
  }

  factory RegistryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyArgs(
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registryName: (map['registryName'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy.dart';

/// {@template pulumi_securityhub_configuration_policy_configuration_policy_args_doc}
/// The set of arguments for ConfigurationPolicy.
/// {@endtemplate}
/// {@macro pulumi_securityhub_configuration_policy_configuration_policy_args_doc}
class ConfigurationPolicyArgs {
  /// Defines how Security Hub is configured. See below.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicy> configurationPolicy;
  /// The description of the configuration policy.
  final pulumi.Input<String>? description;
  /// The name of the configuration policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationPolicyArgs].
  /// [configurationPolicy] Defines how Security Hub is configured. See below.
  /// [description] The description of the configuration policy.
  /// [name] The name of the configuration policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ConfigurationPolicyArgs({
    required this.configurationPolicy,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicy': pulumi.Input.mapInputValue<ConfigurationPolicyConfigurationPolicy, Map<String, dynamic>>(configurationPolicy, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConfigurationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyArgs(
      configurationPolicy: pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicy.fromMap((map['configurationPolicy']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


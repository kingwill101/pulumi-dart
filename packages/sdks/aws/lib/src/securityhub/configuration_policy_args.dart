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
  ConfigurationPolicyArgs({
    required pulumi.Output<ConfigurationPolicyConfigurationPolicy> configurationPolicy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      configurationPolicy = pulumi.Input.asInput<ConfigurationPolicyConfigurationPolicy>(configurationPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      configurationPolicy: pulumi.Output.create<ConfigurationPolicyConfigurationPolicy>(ConfigurationPolicyConfigurationPolicy.fromMap((map['configurationPolicy'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


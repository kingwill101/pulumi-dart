// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy.dart';

/// Input properties used for looking up and filtering ConfigurationPolicy resources.
class ConfigurationPolicyState {
  final pulumi.Input<String>? arn;
  /// Defines how Security Hub is configured. See below.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicy>? configurationPolicy;
  /// The description of the configuration policy.
  final pulumi.Input<String>? description;
  /// The name of the configuration policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationPolicyState].
  /// [arn] Optional.
  /// [configurationPolicy] Defines how Security Hub is configured. See below.
  /// [description] The description of the configuration policy.
  /// [name] The name of the configuration policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConfigurationPolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<ConfigurationPolicyConfigurationPolicy>? configurationPolicy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationPolicy = pulumi.Input.asOptionalInput<ConfigurationPolicyConfigurationPolicy>(configurationPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationPolicy': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicy, Map<String, dynamic>>(configurationPolicy, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConfigurationPolicyState.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationPolicy: map['configurationPolicy'] == null ? null : pulumi.Output.create<ConfigurationPolicyConfigurationPolicy>(ConfigurationPolicyConfigurationPolicy.fromMap((map['configurationPolicy'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


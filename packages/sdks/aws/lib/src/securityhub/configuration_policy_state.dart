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
    this.arn,
    this.configurationPolicy,
    this.description,
    this.name,
    this.region,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      configurationPolicy: map['configurationPolicy'] == null ? null : ((ConfigurationPolicyConfigurationPolicy.fromMap((map['configurationPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


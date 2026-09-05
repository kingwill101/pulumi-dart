// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy.dart';

/// Input properties used for looking up and filtering ConfigurationPolicy resources.
class ConfigurationPolicyState {
  final pulumi.Input<String?>? arn;
  /// Defines how Security Hub is configured. See below.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicy?>? configurationPolicy;
  /// The description of the configuration policy.
  final pulumi.Input<String?>? description;
  /// The name of the configuration policy.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ConfigurationPolicyState].
  /// [arn] Optional.
  /// [configurationPolicy] Defines how Security Hub is configured. See below.
  /// [description] The description of the configuration policy.
  /// [name] The name of the configuration policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ConfigurationPolicyState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationPolicy: (() { final guardedValue = map['configurationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

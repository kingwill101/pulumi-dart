// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_policy_configuration_policy/configuration_policy_configuration_policy.dart';

/// The set of arguments for ConfigurationPolicy.
class ConfigurationPolicyArgs {
  /// Defines how Security Hub is configured. See below.
  final Input<ConfigurationPolicyConfigurationPolicy> configurationPolicy;

  /// The description of the configuration policy.
  final Input<String>? description;

  /// The name of the configuration policy.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ConfigurationPolicyArgs({
    required this.configurationPolicy,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationPolicy'] = Input.mapInputValue<
        ConfigurationPolicyConfigurationPolicy,
        Map<String, dynamic>>(configurationPolicy, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ConfigurationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyArgs(
      configurationPolicy:
          Input.asInput<ConfigurationPolicyConfigurationPolicy>(
              map['configurationPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

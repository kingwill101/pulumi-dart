// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quicksetup_configuration_manager_configuration_definition.dart';
import 'quicksetup_configuration_manager_timeouts.dart';

/// {@template pulumi_ssm_quicksetup_configuration_manager_quicksetup_configuration_manager_args_doc}
/// The set of arguments for QuicksetupConfigurationManager.
/// {@endtemplate}
/// {@macro pulumi_ssm_quicksetup_configuration_manager_quicksetup_configuration_manager_args_doc}
class QuicksetupConfigurationManagerArgs {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  final pulumi.Input<QuicksetupConfigurationManagerConfigurationDefinition> configurationDefinition;
  /// Description of the configuration manager.
  final pulumi.Input<String>? description;
  /// Configuration manager name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<QuicksetupConfigurationManagerTimeouts>? timeouts;

  /// Creates a new [QuicksetupConfigurationManagerArgs].
  /// [configurationDefinition] Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  /// [description] Description of the configuration manager.
  /// [name] Configuration manager name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  QuicksetupConfigurationManagerArgs({
    required this.configurationDefinition,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationDefinition': pulumi.Input.mapInputValue<QuicksetupConfigurationManagerConfigurationDefinition, Map<String, dynamic>>(configurationDefinition, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<QuicksetupConfigurationManagerTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory QuicksetupConfigurationManagerArgs.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerArgs(
      configurationDefinition: (QuicksetupConfigurationManagerConfigurationDefinition.fromMap((map['configurationDefinition']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((QuicksetupConfigurationManagerTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


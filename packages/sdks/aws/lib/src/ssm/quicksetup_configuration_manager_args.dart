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
    required pulumi.Output<QuicksetupConfigurationManagerConfigurationDefinition> configurationDefinition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<QuicksetupConfigurationManagerTimeouts>? timeouts,
  }) :
      configurationDefinition = pulumi.Input.asInput<QuicksetupConfigurationManagerConfigurationDefinition>(configurationDefinition),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<QuicksetupConfigurationManagerTimeouts>(timeouts);

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
      configurationDefinition: pulumi.Output.create<QuicksetupConfigurationManagerConfigurationDefinition>(QuicksetupConfigurationManagerConfigurationDefinition.fromMap((map['configurationDefinition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<QuicksetupConfigurationManagerTimeouts>(QuicksetupConfigurationManagerTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


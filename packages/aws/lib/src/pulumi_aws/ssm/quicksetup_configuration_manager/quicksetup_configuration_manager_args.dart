// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../quicksetup_configuration_manager_configuration_definition/quicksetup_configuration_manager_configuration_definition.dart';
import '../quicksetup_configuration_manager_timeouts/quicksetup_configuration_manager_timeouts.dart';

/// The set of arguments for QuicksetupConfigurationManager.
class QuicksetupConfigurationManagerArgs {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  final pulumi.Input<QuicksetupConfigurationManagerConfigurationDefinition>
      configurationDefinition;

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

  QuicksetupConfigurationManagerArgs({
    required this.configurationDefinition,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationDefinition'] = pulumi.Input.mapInputValue<
            QuicksetupConfigurationManagerConfigurationDefinition,
            Map<String, dynamic>>(
        configurationDefinition, (value) => value.toMap());
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          QuicksetupConfigurationManagerTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory QuicksetupConfigurationManagerArgs.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerArgs(
      configurationDefinition: pulumi.Input.asInput<
              QuicksetupConfigurationManagerConfigurationDefinition>(
          map['configurationDefinition']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<QuicksetupConfigurationManagerTimeouts>(
              map['timeouts']),
    );
  }
}

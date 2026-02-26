// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../quicksetup_configuration_manager_configuration_definition/quicksetup_configuration_manager_configuration_definition.dart';
import '../quicksetup_configuration_manager_timeouts/quicksetup_configuration_manager_timeouts.dart';

/// The set of arguments for QuicksetupConfigurationManager.
class QuicksetupConfigurationManagerArgs {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See <span pulumi-lang-nodejs="`configurationDefinition`" pulumi-lang-dotnet="`ConfigurationDefinition`" pulumi-lang-go="`configurationDefinition`" pulumi-lang-python="`configuration_definition`" pulumi-lang-yaml="`configurationDefinition`" pulumi-lang-java="`configurationDefinition`">`configuration_definition`</span> below.
  final Input<QuicksetupConfigurationManagerConfigurationDefinition>
      configurationDefinition;

  /// Description of the configuration manager.
  final Input<String>? description;

  /// Configuration manager name.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<QuicksetupConfigurationManagerTimeouts>? timeouts;

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
    map['configurationDefinition'] = Input.mapInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<
          QuicksetupConfigurationManagerTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory QuicksetupConfigurationManagerArgs.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerArgs(
      configurationDefinition:
          Input.asInput<QuicksetupConfigurationManagerConfigurationDefinition>(
              map['configurationDefinition']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<QuicksetupConfigurationManagerTimeouts>(
          map['timeouts']),
    );
  }
}

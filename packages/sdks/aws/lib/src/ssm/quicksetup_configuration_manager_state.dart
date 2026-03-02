// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quicksetup_configuration_manager_configuration_definition.dart';
import 'quicksetup_configuration_manager_status_summary.dart';
import 'quicksetup_configuration_manager_timeouts.dart';

/// Input properties used for looking up and filtering QuicksetupConfigurationManager resources.
class QuicksetupConfigurationManagerState {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  final pulumi.Input<QuicksetupConfigurationManagerConfigurationDefinition>? configurationDefinition;
  /// Description of the configuration manager.
  final pulumi.Input<String>? description;
  /// ARN of the Configuration Manager.
  final pulumi.Input<String>? managerArn;
  /// Configuration manager name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A summary of the state of the configuration manager. This includes deployment statuses, association statuses, drift statuses, health checks, and more. See `status_summaries` below.
  final pulumi.Input<List<QuicksetupConfigurationManagerStatusSummary>>? statusSummaries;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<QuicksetupConfigurationManagerTimeouts>? timeouts;

  /// Creates a new [QuicksetupConfigurationManagerState].
  /// [configurationDefinition] Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  /// [description] Description of the configuration manager.
  /// [managerArn] ARN of the Configuration Manager.
  /// [name] Configuration manager name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statusSummaries] A summary of the state of the configuration manager. This includes deployment statuses, association statuses, drift statuses, health checks, and more. See `status_summaries` below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  QuicksetupConfigurationManagerState({
    this.configurationDefinition,
    this.description,
    this.managerArn,
    this.name,
    this.region,
    this.statusSummaries,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationDefinition': ?pulumi.Input.mapOptionalInputValue<QuicksetupConfigurationManagerConfigurationDefinition, Map<String, dynamic>>(configurationDefinition, (value) => value.toMap()),
      'description': ?description,
      'managerArn': ?managerArn,
      'name': ?name,
      'region': ?region,
      'statusSummaries': ?pulumi.Input.mapOptionalInputValue<List<QuicksetupConfigurationManagerStatusSummary>, List<Map<String, dynamic>>>(statusSummaries, (value) => pulumi.Input.encodeList<QuicksetupConfigurationManagerStatusSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<QuicksetupConfigurationManagerTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory QuicksetupConfigurationManagerState.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerState(
      configurationDefinition: map['configurationDefinition'] == null ? null : ((QuicksetupConfigurationManagerConfigurationDefinition.fromMap((map['configurationDefinition']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      managerArn: map['managerArn'] == null ? null : ((map['managerArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      statusSummaries: map['statusSummaries'] == null ? null : ((pulumi.Input.decodeList<QuicksetupConfigurationManagerStatusSummary>(map['statusSummaries']!, (value) => QuicksetupConfigurationManagerStatusSummary.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((QuicksetupConfigurationManagerTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


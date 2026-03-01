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
    pulumi.Output<QuicksetupConfigurationManagerConfigurationDefinition>? configurationDefinition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? managerArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<QuicksetupConfigurationManagerStatusSummary>>? statusSummaries,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<QuicksetupConfigurationManagerTimeouts>? timeouts,
  }) :
      configurationDefinition = pulumi.Input.asOptionalInput<QuicksetupConfigurationManagerConfigurationDefinition>(configurationDefinition),
      description = pulumi.Input.asOptionalInput<String>(description),
      managerArn = pulumi.Input.asOptionalInput<String>(managerArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      statusSummaries = pulumi.Input.asOptionalInput<List<QuicksetupConfigurationManagerStatusSummary>>(statusSummaries),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<QuicksetupConfigurationManagerTimeouts>(timeouts);

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
      configurationDefinition: map['configurationDefinition'] == null ? null : pulumi.Output.create<QuicksetupConfigurationManagerConfigurationDefinition>(QuicksetupConfigurationManagerConfigurationDefinition.fromMap((map['configurationDefinition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      managerArn: map['managerArn'] == null ? null : pulumi.Output.create<String>(map['managerArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      statusSummaries: map['statusSummaries'] == null ? null : pulumi.Output.create<List<QuicksetupConfigurationManagerStatusSummary>>(pulumi.Input.decodeList<QuicksetupConfigurationManagerStatusSummary>(map['statusSummaries'], (value) => QuicksetupConfigurationManagerStatusSummary.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<QuicksetupConfigurationManagerTimeouts>(QuicksetupConfigurationManagerTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


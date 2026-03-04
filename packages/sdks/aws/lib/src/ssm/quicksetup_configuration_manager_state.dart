// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quicksetup_configuration_manager_configuration_definition.dart';
import 'quicksetup_configuration_manager_status_summary.dart';
import 'quicksetup_configuration_manager_timeouts.dart';

/// Input properties used for looking up and filtering QuicksetupConfigurationManager resources.
class QuicksetupConfigurationManagerState {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  final pulumi.Input<QuicksetupConfigurationManagerConfigurationDefinition>?
  configurationDefinition;

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
  final pulumi.Input<List<QuicksetupConfigurationManagerStatusSummary>>?
  statusSummaries;

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
      'configurationDefinition':
          ?pulumi.Input.mapOptionalInputValue<
            QuicksetupConfigurationManagerConfigurationDefinition,
            Map<String, dynamic>
          >(configurationDefinition, (value) => value.toMap()),
      'description': ?description,
      'managerArn': ?managerArn,
      'name': ?name,
      'region': ?region,
      'statusSummaries':
          ?pulumi.Input.mapOptionalInputValue<
            List<QuicksetupConfigurationManagerStatusSummary>,
            List<Map<String, dynamic>>
          >(
            statusSummaries,
            (value) =>
                pulumi.Input.encodeList<
                  QuicksetupConfigurationManagerStatusSummary,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            QuicksetupConfigurationManagerTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory QuicksetupConfigurationManagerState.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuicksetupConfigurationManagerState(
      configurationDefinition: (() {
        final guardedValue = map['configurationDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QuicksetupConfigurationManagerConfigurationDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managerArn: (() {
        final guardedValue = map['managerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusSummaries: (() {
        final guardedValue = map['statusSummaries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<QuicksetupConfigurationManagerStatusSummary>(
            guardedValue,
            (value) => QuicksetupConfigurationManagerStatusSummary.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QuicksetupConfigurationManagerTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

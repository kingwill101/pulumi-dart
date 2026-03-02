// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_settings.dart';
import 'job_configuration_event_trigger_config.dart';
import 'job_configuration_manual_trigger_config.dart';
import 'job_configuration_schedule_trigger_config.dart';
import 'registry_credentials.dart';
import 'secret.dart';

/// Non versioned Container Apps Job configuration properties
class JobConfiguration {
  /// Trigger configuration of an event driven job.
  final pulumi.Input<JobConfigurationEventTriggerConfig>? eventTriggerConfig;
  /// Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  final pulumi.Input<List<IdentitySettings>>? identitySettings;
  /// Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationManualTriggerConfig>? manualTriggerConfig;
  /// Collection of private container registry credentials used by a Container apps job
  final pulumi.Input<List<RegistryCredentials>>? registries;
  /// Maximum number of retries before failing the job.
  final pulumi.Input<int>? replicaRetryLimit;
  /// Maximum number of seconds a replica is allowed to run.
  final pulumi.Input<int> replicaTimeout;
  /// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationScheduleTriggerConfig>? scheduleTriggerConfig;
  /// Collection of secrets used by a Container Apps Job
  final pulumi.Input<List<Secret>>? secrets;
  /// Trigger type of the job
  final pulumi.Input<String> triggerType;

  /// Creates a new [JobConfiguration].
  /// [eventTriggerConfig] Trigger configuration of an event driven job.
  /// [identitySettings] Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  /// [manualTriggerConfig] Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  /// [registries] Collection of private container registry credentials used by a Container apps job
  /// [replicaRetryLimit] Maximum number of retries before failing the job.
  /// [replicaTimeout] Maximum number of seconds a replica is allowed to run.
  /// [scheduleTriggerConfig] Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  /// [secrets] Collection of secrets used by a Container Apps Job
  /// [triggerType] Trigger type of the job
  JobConfiguration({
    this.eventTriggerConfig,
    this.identitySettings,
    this.manualTriggerConfig,
    this.registries,
    this.replicaRetryLimit,
    required this.replicaTimeout,
    this.scheduleTriggerConfig,
    this.secrets,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationEventTriggerConfig, Map<String, dynamic>>(eventTriggerConfig, (value) => value.toMap()),
      'identitySettings': ?pulumi.Input.mapOptionalInputValue<List<IdentitySettings>, List<Map<String, dynamic>>>(identitySettings, (value) => pulumi.Input.encodeList<IdentitySettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationManualTriggerConfig, Map<String, dynamic>>(manualTriggerConfig, (value) => value.toMap()),
      'registries': ?pulumi.Input.mapOptionalInputValue<List<RegistryCredentials>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<RegistryCredentials, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeout': replicaTimeout,
      'scheduleTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationScheduleTriggerConfig, Map<String, dynamic>>(scheduleTriggerConfig, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<Secret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerType': triggerType,
    };
  }

  factory JobConfiguration.fromMap(Map<String, dynamic> map) {
    return JobConfiguration(
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : (JobConfigurationEventTriggerConfig.fromMap((map['eventTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      identitySettings: map['identitySettings'] == null ? null : (pulumi.Input.decodeList<IdentitySettings>(map['identitySettings'], (value) => IdentitySettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : (JobConfigurationManualTriggerConfig.fromMap((map['manualTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      registries: map['registries'] == null ? null : (pulumi.Input.decodeList<RegistryCredentials>(map['registries'], (value) => RegistryCredentials.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : (map['replicaRetryLimit'] as int).input(),
      replicaTimeout: (map['replicaTimeout'] as int).input(),
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : (JobConfigurationScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<Secret>(map['secrets'], (value) => Secret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerType: (map['triggerType'] as String).input(),
    );
  }
}


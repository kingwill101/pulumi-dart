// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_settings_response.dart';
import 'job_configuration_response_event_trigger_config.dart';
import 'job_configuration_response_manual_trigger_config.dart';
import 'job_configuration_response_schedule_trigger_config.dart';
import 'registry_credentials_response.dart';
import 'secret_response.dart';

/// Non versioned Container Apps Job configuration properties
class JobConfigurationResponse {
  /// Trigger configuration of an event driven job.
  final pulumi.Input<JobConfigurationResponseEventTriggerConfig>? eventTriggerConfig;
  /// Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  final pulumi.Input<List<IdentitySettingsResponse>>? identitySettings;
  /// Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationResponseManualTriggerConfig>? manualTriggerConfig;
  /// Collection of private container registry credentials used by a Container apps job
  final pulumi.Input<List<RegistryCredentialsResponse>>? registries;
  /// Maximum number of retries before failing the job.
  final pulumi.Input<int>? replicaRetryLimit;
  /// Maximum number of seconds a replica is allowed to run.
  final pulumi.Input<int> replicaTimeout;
  /// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationResponseScheduleTriggerConfig>? scheduleTriggerConfig;
  /// Collection of secrets used by a Container Apps Job
  final pulumi.Input<List<SecretResponse>>? secrets;
  /// Trigger type of the job
  final pulumi.Input<String> triggerType;

  /// Creates a new [JobConfigurationResponse].
  /// [eventTriggerConfig] Trigger configuration of an event driven job.
  /// [identitySettings] Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  /// [manualTriggerConfig] Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  /// [registries] Collection of private container registry credentials used by a Container apps job
  /// [replicaRetryLimit] Maximum number of retries before failing the job.
  /// [replicaTimeout] Maximum number of seconds a replica is allowed to run.
  /// [scheduleTriggerConfig] Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  /// [secrets] Collection of secrets used by a Container Apps Job
  /// [triggerType] Trigger type of the job
  JobConfigurationResponse({
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
      'eventTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationResponseEventTriggerConfig, Map<String, dynamic>>(eventTriggerConfig, (value) => value.toMap()),
      'identitySettings': ?pulumi.Input.mapOptionalInputValue<List<IdentitySettingsResponse>, List<Map<String, dynamic>>>(identitySettings, (value) => pulumi.Input.encodeList<IdentitySettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationResponseManualTriggerConfig, Map<String, dynamic>>(manualTriggerConfig, (value) => value.toMap()),
      'registries': ?pulumi.Input.mapOptionalInputValue<List<RegistryCredentialsResponse>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<RegistryCredentialsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeout': replicaTimeout,
      'scheduleTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobConfigurationResponseScheduleTriggerConfig, Map<String, dynamic>>(scheduleTriggerConfig, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<SecretResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerType': triggerType,
    };
  }

  factory JobConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponse(
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : (JobConfigurationResponseEventTriggerConfig.fromMap((map['eventTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      identitySettings: map['identitySettings'] == null ? null : (pulumi.Input.decodeList<IdentitySettingsResponse>(map['identitySettings'], (value) => IdentitySettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : (JobConfigurationResponseManualTriggerConfig.fromMap((map['manualTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      registries: map['registries'] == null ? null : (pulumi.Input.decodeList<RegistryCredentialsResponse>(map['registries'], (value) => RegistryCredentialsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : (map['replicaRetryLimit'] as int).input(),
      replicaTimeout: (map['replicaTimeout'] as int).input(),
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : (JobConfigurationResponseScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig'] as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerType: (map['triggerType'] as String).input(),
    );
  }
}


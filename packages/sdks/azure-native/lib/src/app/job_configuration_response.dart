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
  final JobConfigurationResponseEventTriggerConfig? eventTriggerConfig;
  /// Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  final List<IdentitySettingsResponse>? identitySettings;
  /// Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  final JobConfigurationResponseManualTriggerConfig? manualTriggerConfig;
  /// Collection of private container registry credentials used by a Container apps job
  final List<RegistryCredentialsResponse>? registries;
  /// Maximum number of retries before failing the job.
  final int? replicaRetryLimit;
  /// Maximum number of seconds a replica is allowed to run.
  final int replicaTimeout;
  /// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  final JobConfigurationResponseScheduleTriggerConfig? scheduleTriggerConfig;
  /// Collection of secrets used by a Container Apps Job
  final List<SecretResponse>? secrets;
  /// Trigger type of the job
  final String triggerType;

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
      'eventTriggerConfig': ?eventTriggerConfig == null ? null : eventTriggerConfig!.toMap(),
      'identitySettings': ?identitySettings == null ? null : pulumi.Input.encodeList<IdentitySettingsResponse, Map<String, dynamic>>(identitySettings!, (value) => value.toMap()),
      'manualTriggerConfig': ?manualTriggerConfig == null ? null : manualTriggerConfig!.toMap(),
      'registries': ?registries == null ? null : pulumi.Input.encodeList<RegistryCredentialsResponse, Map<String, dynamic>>(registries!, (value) => value.toMap()),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeout': replicaTimeout,
      'scheduleTriggerConfig': ?scheduleTriggerConfig == null ? null : scheduleTriggerConfig!.toMap(),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'triggerType': triggerType,
    };
  }

  factory JobConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponse(
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : JobConfigurationResponseEventTriggerConfig.fromMap((map['eventTriggerConfig'] as Map).cast<String, dynamic>()),
      identitySettings: map['identitySettings'] == null ? null : pulumi.Input.decodeList<IdentitySettingsResponse>(map['identitySettings'], (value) => IdentitySettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : JobConfigurationResponseManualTriggerConfig.fromMap((map['manualTriggerConfig'] as Map).cast<String, dynamic>()),
      registries: map['registries'] == null ? null : pulumi.Input.decodeList<RegistryCredentialsResponse>(map['registries'], (value) => RegistryCredentialsResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : map['replicaRetryLimit'] as int,
      replicaTimeout: map['replicaTimeout'] as int,
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : JobConfigurationResponseScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      triggerType: map['triggerType'] as String,
    );
  }
}


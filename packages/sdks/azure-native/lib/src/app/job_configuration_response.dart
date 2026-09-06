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
  final pulumi.Input<JobConfigurationResponseEventTriggerConfig?>? eventTriggerConfig;
  /// Optional settings for Managed Identities that are assigned to the Container App Job. If a Managed Identity is not specified here, default settings will be used.
  final pulumi.Input<List<IdentitySettingsResponse>?>? identitySettings;
  /// Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationResponseManualTriggerConfig?>? manualTriggerConfig;
  /// Collection of private container registry credentials used by a Container apps job
  final pulumi.Input<List<RegistryCredentialsResponse>?>? registries;
  /// Maximum number of retries before failing the job.
  final pulumi.Input<int?>? replicaRetryLimit;
  /// Maximum number of seconds a replica is allowed to run.
  final pulumi.Input<int> replicaTimeout;
  /// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
  final pulumi.Input<JobConfigurationResponseScheduleTriggerConfig?>? scheduleTriggerConfig;
  /// Collection of secrets used by a Container Apps Job
  final pulumi.Input<List<SecretResponse>?>? secrets;
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
    pulumi.Input<String>? triggerType,
  }) : triggerType = triggerType ?? pulumi.Input.fromValue('Manual');

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
      eventTriggerConfig: (() { final guardedValue = map['eventTriggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigurationResponseEventTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identitySettings: (() { final guardedValue = map['identitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IdentitySettingsResponse>(guardedValue, (value) => IdentitySettingsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manualTriggerConfig: (() { final guardedValue = map['manualTriggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigurationResponseManualTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryCredentialsResponse>(guardedValue, (value) => RegistryCredentialsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicaRetryLimit: (() { final guardedValue = map['replicaRetryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      replicaTimeout: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['replicaTimeout'])),
      scheduleTriggerConfig: (() { final guardedValue = map['scheduleTriggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigurationResponseScheduleTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretResponse>(guardedValue, (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}

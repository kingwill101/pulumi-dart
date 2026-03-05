// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_storage_config.dart';

/// {@template pulumi_connect_instance_storage_config_instance_storage_config_args_doc}
/// The set of arguments for InstanceStorageConfig.
/// {@endtemplate}
/// {@macro pulumi_connect_instance_storage_config_instance_storage_config_args_doc}
class InstanceStorageConfigArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  final pulumi.Input<String> resourceType;
  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfig> storageConfig;

  /// Creates a new [InstanceStorageConfigArgs].
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  /// [storageConfig] Specifies the storage configuration options for the Connect Instance. Documented below.
  InstanceStorageConfigArgs({
    required this.instanceId,
    this.region,
    required this.resourceType,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'region': ?region,
      'resourceType': resourceType,
      'storageConfig': pulumi.Input.mapInputValue<InstanceStorageConfigStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory InstanceStorageConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      storageConfig: pulumi.Input.fromValue(InstanceStorageConfigStorageConfig.fromMap((map['storageConfig']! as Map).cast<String, dynamic>())),
    );
  }
}


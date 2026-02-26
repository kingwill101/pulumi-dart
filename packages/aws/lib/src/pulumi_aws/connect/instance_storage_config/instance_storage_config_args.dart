// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_storage_config_storage_config/instance_storage_config_storage_config.dart';

/// The set of arguments for InstanceStorageConfig.
class InstanceStorageConfigArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  final Input<String> resourceType;

  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  final Input<InstanceStorageConfigStorageConfig> storageConfig;

  InstanceStorageConfigArgs({
    required this.instanceId,
    this.region,
    required this.resourceType,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceType'] = resourceType;
    map['storageConfig'] = Input.mapInputValue<
        InstanceStorageConfigStorageConfig,
        Map<String, dynamic>>(storageConfig, (value) => value.toMap());
    return map;
  }

  factory InstanceStorageConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceType: Input.asInput<String>(map['resourceType']),
      storageConfig: Input.asInput<InstanceStorageConfigStorageConfig>(
          map['storageConfig']),
    );
  }
}

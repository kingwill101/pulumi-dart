// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_storage_config_storage_config/instance_storage_config_storage_config.dart';

/// The set of arguments for InstanceStorageConfig.
class InstanceStorageConfigArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  final pulumi.Input<String> resourceType;

  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfig> storageConfig;

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
    map['storageConfig'] = pulumi.Input.mapInputValue<
        InstanceStorageConfigStorageConfig,
        Map<String, dynamic>>(storageConfig, (value) => value.toMap());
    return map;
  }

  factory InstanceStorageConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
      storageConfig: pulumi.Input.asInput<InstanceStorageConfigStorageConfig>(
          map['storageConfig']),
    );
  }
}

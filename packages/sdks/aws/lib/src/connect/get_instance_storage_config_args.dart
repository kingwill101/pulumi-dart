// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_instance_storage_config_get_instance_storage_config_args_doc}
/// Arguments for getInstanceStorageConfig.
/// {@endtemplate}
/// {@macro pulumi_connect_get_instance_storage_config_get_instance_storage_config_args_doc}
class GetInstanceStorageConfigArgs {
  /// The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
  final pulumi.Input<String> associationId;
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `SCHEDULED_REPORTS` |  `SCREEN_RECORDINGS`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetInstanceStorageConfigArgs].
  /// [associationId] The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `SCHEDULED_REPORTS` |  `SCREEN_RECORDINGS`.
  const GetInstanceStorageConfigArgs({
    required this.associationId,
    required this.instanceId,
    this.region,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': associationId,
      'instanceId': instanceId,
      'region': ?region,
      'resourceType': resourceType,
    };
  }

  factory GetInstanceStorageConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigArgs(
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

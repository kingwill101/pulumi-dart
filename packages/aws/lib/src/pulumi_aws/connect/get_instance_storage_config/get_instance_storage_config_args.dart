// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceStorageConfig.
class GetInstanceStorageConfigArgs {
  /// The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
  final Input<String> associationId;

  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `SCHEDULED_REPORTS` |  `SCREEN_RECORDINGS`.
  final Input<String> resourceType;

  GetInstanceStorageConfigArgs({
    required this.associationId,
    required this.instanceId,
    this.region,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationId'] = associationId;
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceType'] = resourceType;
    return map;
  }

  factory GetInstanceStorageConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigArgs(
      associationId: Input.asInput<String>(map['associationId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceType: Input.asInput<String>(map['resourceType']),
    );
  }
}

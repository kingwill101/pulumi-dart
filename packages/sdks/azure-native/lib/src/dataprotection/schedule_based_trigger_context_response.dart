// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_response.dart';
import 'tagging_criteria_response.dart';

/// Schedule based trigger context
class ScheduleBasedTriggerContextResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ScheduleBasedTriggerContext'.
  final pulumi.Input<String> objectType;
  /// Schedule for this backup
  final pulumi.Input<BackupScheduleResponse> schedule;
  /// List of tags that can be applicable for given schedule.
  final pulumi.Input<List<TaggingCriteriaResponse>> taggingCriteria;

  /// Creates a new [ScheduleBasedTriggerContextResponse].
  /// [objectType] Type of the specific object - used for deserializing
  /// [schedule] Schedule for this backup
  /// [taggingCriteria] List of tags that can be applicable for given schedule.
  ScheduleBasedTriggerContextResponse({
    required this.objectType,
    required this.schedule,
    required this.taggingCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'schedule': pulumi.Input.mapInputValue<BackupScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'taggingCriteria': pulumi.Input.mapInputValue<List<TaggingCriteriaResponse>, List<Map<String, dynamic>>>(taggingCriteria, (value) => pulumi.Input.encodeList<TaggingCriteriaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduleBasedTriggerContextResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleBasedTriggerContextResponse(
      objectType: (map['objectType'] as String).input(),
      schedule: (BackupScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      taggingCriteria: (pulumi.Input.decodeList<TaggingCriteriaResponse>(map['taggingCriteria'], (value) => TaggingCriteriaResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


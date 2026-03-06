// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule.dart';
import 'tagging_criteria.dart';

/// Schedule based trigger context
class ScheduleBasedTriggerContext {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ScheduleBasedTriggerContext'.
  final pulumi.Input<String> objectType;
  /// Schedule for this backup
  final pulumi.Input<BackupSchedule> schedule;
  /// List of tags that can be applicable for given schedule.
  final pulumi.Input<List<TaggingCriteria>> taggingCriteria;

  /// Creates a new [ScheduleBasedTriggerContext].
  /// [objectType] Type of the specific object - used for deserializing
  /// [schedule] Schedule for this backup
  /// [taggingCriteria] List of tags that can be applicable for given schedule.
  const ScheduleBasedTriggerContext({
    required this.objectType,
    required this.schedule,
    required this.taggingCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'schedule': pulumi.Input.mapInputValue<BackupSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'taggingCriteria': pulumi.Input.mapInputValue<List<TaggingCriteria>, List<Map<String, dynamic>>>(taggingCriteria, (value) => pulumi.Input.encodeList<TaggingCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduleBasedTriggerContext.fromMap(Map<String, dynamic> map) {
    return ScheduleBasedTriggerContext(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      schedule: pulumi.Input.fromValue(BackupSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      taggingCriteria: pulumi.Input.fromValue(pulumi.Input.decodeList<TaggingCriteria>(map['taggingCriteria']!, (value) => TaggingCriteria.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


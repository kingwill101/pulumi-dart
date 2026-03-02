// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_tag.dart';
import 'schedule_based_backup_criteria.dart';

/// Tagging criteria
class TaggingCriteria {
  /// Criteria which decides whether the tag can be applied to a triggered backup.
  final pulumi.Input<List<ScheduleBasedBackupCriteria>>? criteria;
  /// Specifies if tag is default.
  final pulumi.Input<bool> isDefault;
  /// Retention tag information
  final pulumi.Input<RetentionTag> tagInfo;
  /// Retention Tag priority.
  final pulumi.Input<double> taggingPriority;

  /// Creates a new [TaggingCriteria].
  /// [criteria] Criteria which decides whether the tag can be applied to a triggered backup.
  /// [isDefault] Specifies if tag is default.
  /// [tagInfo] Retention tag information
  /// [taggingPriority] Retention Tag priority.
  TaggingCriteria({
    this.criteria,
    required this.isDefault,
    required this.tagInfo,
    required this.taggingPriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': ?pulumi.Input.mapOptionalInputValue<List<ScheduleBasedBackupCriteria>, List<Map<String, dynamic>>>(criteria, (value) => pulumi.Input.encodeList<ScheduleBasedBackupCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDefault': isDefault,
      'tagInfo': pulumi.Input.mapInputValue<RetentionTag, Map<String, dynamic>>(tagInfo, (value) => value.toMap()),
      'taggingPriority': taggingPriority,
    };
  }

  factory TaggingCriteria.fromMap(Map<String, dynamic> map) {
    return TaggingCriteria(
      criteria: map['criteria'] == null ? null : (pulumi.Input.decodeList<ScheduleBasedBackupCriteria>(map['criteria'], (value) => ScheduleBasedBackupCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isDefault: (map['isDefault'] as bool).input(),
      tagInfo: (RetentionTag.fromMap((map['tagInfo'] as Map).cast<String, dynamic>())).input(),
      taggingPriority: (map['taggingPriority'] as double).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_tag_response.dart';
import 'schedule_based_backup_criteria_response.dart';

/// Tagging criteria
class TaggingCriteriaResponse {
  /// Criteria which decides whether the tag can be applied to a triggered backup.
  final List<ScheduleBasedBackupCriteriaResponse>? criteria;
  /// Specifies if tag is default.
  final bool isDefault;
  /// Retention tag information
  final RetentionTagResponse tagInfo;
  /// Retention Tag priority.
  final double taggingPriority;

  /// Creates a new [TaggingCriteriaResponse].
  /// [criteria] Criteria which decides whether the tag can be applied to a triggered backup.
  /// [isDefault] Specifies if tag is default.
  /// [tagInfo] Retention tag information
  /// [taggingPriority] Retention Tag priority.
  TaggingCriteriaResponse({
    this.criteria,
    required this.isDefault,
    required this.tagInfo,
    required this.taggingPriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': ?criteria == null ? null : pulumi.Input.encodeList<ScheduleBasedBackupCriteriaResponse, Map<String, dynamic>>(criteria!, (value) => value.toMap()),
      'isDefault': isDefault,
      'tagInfo': tagInfo.toMap(),
      'taggingPriority': taggingPriority,
    };
  }

  factory TaggingCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return TaggingCriteriaResponse(
      criteria: map['criteria'] == null ? null : pulumi.Input.decodeList<ScheduleBasedBackupCriteriaResponse>(map['criteria'], (value) => ScheduleBasedBackupCriteriaResponse.fromMap((value as Map).cast<String, dynamic>())),
      isDefault: map['isDefault'] as bool,
      tagInfo: RetentionTagResponse.fromMap((map['tagInfo'] as Map).cast<String, dynamic>()),
      taggingPriority: map['taggingPriority'] as double,
    );
  }
}


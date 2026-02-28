// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry_jobs_v4.dart';

/// Job compensation details.
class CompensationInfoJobsV4 {
  /// Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  final List<CompensationEntryJobsV4>? entries;

  /// Creates a new [CompensationInfoJobsV4].
  /// [entries] Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  CompensationInfoJobsV4({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] = pulumi.Input.encodeList<CompensationEntryJobsV4,
          Map<String, dynamic>>(entriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompensationInfoJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationInfoJobsV4(
      entries: map['entries'] == null
          ? null
          : pulumi.Input.decodeList<CompensationEntryJobsV4>(
              map['entries'],
              (value) => CompensationEntryJobsV4.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

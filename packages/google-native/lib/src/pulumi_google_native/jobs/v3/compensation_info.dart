// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'compensation_entry.dart';

/// Job compensation details.
class CompensationInfo {
  /// Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  final List<CompensationEntry>? entries;

  CompensationInfo({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] =
          Input.encodeList<CompensationEntry, Map<String, dynamic>>(
              entriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompensationInfo.fromMap(Map<String, dynamic> map) {
    return CompensationInfo(
      entries: map['entries'] == null
          ? null
          : Input.decodeList<CompensationEntry>(
              map['entries'],
              (value) => CompensationEntry.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

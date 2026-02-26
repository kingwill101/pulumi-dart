// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'compensation_entry2.dart';

/// Job compensation details.
class CompensationInfo2 {
  /// Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  final List<CompensationEntry2>? entries;

  CompensationInfo2({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] =
          Input.encodeList<CompensationEntry2, Map<String, dynamic>>(
              entriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompensationInfo2.fromMap(Map<String, dynamic> map) {
    return CompensationInfo2(
      entries: map['entries'] == null
          ? null
          : Input.decodeList<CompensationEntry2>(
              map['entries'],
              (value) => CompensationEntry2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

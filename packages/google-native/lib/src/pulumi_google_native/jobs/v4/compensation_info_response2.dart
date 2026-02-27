// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'compensation_entry_response2.dart';
import 'compensation_range_response2.dart';

/// Job compensation details.
class CompensationInfoResponse2 {
  /// Annualized base compensation range. Computed as base compensation entry's CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final CompensationRangeResponse2 annualizedBaseCompensationRange;

  /// Annualized total compensation range. Computed as all compensation entries' CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final CompensationRangeResponse2 annualizedTotalCompensationRange;

  /// Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  final List<CompensationEntryResponse2> entries;

  CompensationInfoResponse2({
    required this.annualizedBaseCompensationRange,
    required this.annualizedTotalCompensationRange,
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annualizedBaseCompensationRange'] =
        annualizedBaseCompensationRange.toMap();
    map['annualizedTotalCompensationRange'] =
        annualizedTotalCompensationRange.toMap();
    map['entries'] =
        Input.encodeList<CompensationEntryResponse2, Map<String, dynamic>>(
            entries, (value) => value.toMap());
    return map;
  }

  factory CompensationInfoResponse2.fromMap(Map<String, dynamic> map) {
    return CompensationInfoResponse2(
      annualizedBaseCompensationRange: CompensationRangeResponse2.fromMap(
          (map['annualizedBaseCompensationRange'] as Map)
              .cast<String, dynamic>()),
      annualizedTotalCompensationRange: CompensationRangeResponse2.fromMap(
          (map['annualizedTotalCompensationRange'] as Map)
              .cast<String, dynamic>()),
      entries: Input.decodeList<CompensationEntryResponse2>(
          map['entries'],
          (value) => CompensationEntryResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

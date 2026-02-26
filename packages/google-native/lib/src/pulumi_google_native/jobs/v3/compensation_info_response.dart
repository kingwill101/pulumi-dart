// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'compensation_entry_response.dart';
import 'compensation_range_response.dart';

/// Job compensation details.
class CompensationInfoResponse {
  /// Annualized base compensation range. Computed as base compensation entry's CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final CompensationRangeResponse annualizedBaseCompensationRange;

  /// Annualized total compensation range. Computed as all compensation entries' CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final CompensationRangeResponse annualizedTotalCompensationRange;

  /// Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  final List<CompensationEntryResponse> entries;

  CompensationInfoResponse({
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
        Input.encodeList<CompensationEntryResponse, Map<String, dynamic>>(
            entries, (value) => value.toMap());
    return map;
  }

  factory CompensationInfoResponse.fromMap(Map<String, dynamic> map) {
    return CompensationInfoResponse(
      annualizedBaseCompensationRange: CompensationRangeResponse.fromMap(
          (map['annualizedBaseCompensationRange'] as Map)
              .cast<String, dynamic>()),
      annualizedTotalCompensationRange: CompensationRangeResponse.fromMap(
          (map['annualizedTotalCompensationRange'] as Map)
              .cast<String, dynamic>()),
      entries: Input.decodeList<CompensationEntryResponse>(
          map['entries'],
          (value) => CompensationEntryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

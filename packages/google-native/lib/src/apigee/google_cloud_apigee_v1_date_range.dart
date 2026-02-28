// ignore_for_file: unused_element, unnecessary_cast

/// Date range of the data to export.
class GoogleCloudApigeeV1DateRange {
  /// End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which will not be in the output.
  final String end;

  /// Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 00:00:00 UTC on the start date.
  final String start;

  /// Creates a new [GoogleCloudApigeeV1DateRange].
  /// [end] End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which will not be in the output.
  /// [start] Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 00:00:00 UTC on the start date.
  GoogleCloudApigeeV1DateRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GoogleCloudApigeeV1DateRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DateRange(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}

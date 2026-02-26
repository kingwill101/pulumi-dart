// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo {
  /// Count representing minimum(FR totalCount, matching_reserved_capacity+matching_unreserved_instances).
  final String? count;

  /// Timestamp when the matching usage was calculated.
  final String? timeStamp;

  FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo({
    this.count,
    this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final timeStampValue = timeStamp;
    if (timeStampValue != null) {
      map['timeStamp'] = timeStampValue;
    }
    return map;
  }

  factory FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo(
      count: map['count'] == null ? null : map['count'] as String,
      timeStamp: map['timeStamp'] == null ? null : map['timeStamp'] as String,
    );
  }
}

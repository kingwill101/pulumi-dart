// ignore_for_file: unused_element, unnecessary_cast


class UsagePlanQuotaSettings {
  /// Maximum number of requests that can be made in a given time period.
  final int limit;
  /// Number of requests subtracted from the given limit in the initial time period.
  final int? offset;
  /// Time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".
  final String period;

  /// Creates a new [UsagePlanQuotaSettings].
  /// [limit] Maximum number of requests that can be made in a given time period.
  /// [offset] Number of requests subtracted from the given limit in the initial time period.
  /// [period] Time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".
  UsagePlanQuotaSettings({
    required this.limit,
    this.offset,
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
      'offset': ?offset,
      'period': period,
    };
  }

  factory UsagePlanQuotaSettings.fromMap(Map<String, dynamic> map) {
    return UsagePlanQuotaSettings(
      limit: map['limit'] as int,
      offset: map['offset'] == null ? null : map['offset'] as int,
      period: map['period'] as String,
    );
  }
}


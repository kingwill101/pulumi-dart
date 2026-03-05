// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UsagePlanQuotaSettings {
  /// Maximum number of requests that can be made in a given time period.
  final pulumi.Input<int> limit;
  /// Number of requests subtracted from the given limit in the initial time period.
  final pulumi.Input<int>? offset;
  /// Time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".
  final pulumi.Input<String> period;

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
      limit: pulumi.Input.fromValue(map['limit'] as int),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      period: pulumi.Input.fromValue(map['period'] as String),
    );
  }
}


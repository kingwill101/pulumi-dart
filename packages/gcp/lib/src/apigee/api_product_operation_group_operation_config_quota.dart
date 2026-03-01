// ignore_for_file: unused_element, unnecessary_cast

class ApiProductOperationGroupOperationConfigQuota {
  /// Required. Time interval over which the number of request messages is calculated.
  final String? interval;

  /// Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  final String? limit;

  /// Time unit defined for the interval. Valid values include second, minute, hour, day, month or year. If limit and interval are valid, the default value is hour; otherwise, the default is null.
  final String? timeUnit;

  /// Creates a new [ApiProductOperationGroupOperationConfigQuota].
  /// [interval] Required. Time interval over which the number of request messages is calculated.
  /// [limit] Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  /// [timeUnit] Time unit defined for the interval. Valid values include second, minute, hour, day, month or year. If limit and interval are valid, the default value is hour; otherwise, the default is null.
  ApiProductOperationGroupOperationConfigQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'limit': ?limit,
      'timeUnit': ?timeUnit,
    };
  }

  factory ApiProductOperationGroupOperationConfigQuota.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiProductOperationGroupOperationConfigQuota(
      interval: map['interval'] == null ? null : map['interval'] as String,
      limit: map['limit'] == null ? null : map['limit'] as String,
      timeUnit: map['timeUnit'] == null ? null : map['timeUnit'] as String,
    );
  }
}

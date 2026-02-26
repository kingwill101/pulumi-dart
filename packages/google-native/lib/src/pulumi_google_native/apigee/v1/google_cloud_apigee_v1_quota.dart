// ignore_for_file: unused_element, unnecessary_cast

/// Quota contains the essential parameters needed that can be applied on the resources, methods, API source combination associated with this API product. While Quota is optional, setting it prevents requests from exceeding the provisioned parameters.
class GoogleCloudApigeeV1Quota {
  /// Time interval over which the number of request messages is calculated.
  final String interval;

  /// Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  final String limit;

  /// Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or `month`. If `limit` and `interval` are valid, the default value is `hour`; otherwise, the default is null.
  final String? timeUnit;

  GoogleCloudApigeeV1Quota({
    required this.interval,
    required this.limit,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interval'] = interval;
    map['limit'] = limit;
    final timeUnitValue = timeUnit;
    if (timeUnitValue != null) {
      map['timeUnit'] = timeUnitValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1Quota.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Quota(
      interval: map['interval'] as String,
      limit: map['limit'] as String,
      timeUnit: map['timeUnit'] == null ? null : map['timeUnit'] as String,
    );
  }
}

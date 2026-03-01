// ignore_for_file: unused_element, unnecessary_cast

/// Quota contains the essential parameters needed that can be applied on the resources, methods, API source combination associated with this API product. While Quota is optional, setting it prevents requests from exceeding the provisioned parameters.
class GoogleCloudApigeeV1QuotaResponse {
  /// Time interval over which the number of request messages is calculated.
  final String interval;

  /// Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  final String limit;

  /// Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or `month`. If `limit` and `interval` are valid, the default value is `hour`; otherwise, the default is null.
  final String timeUnit;

  /// Creates a new [GoogleCloudApigeeV1QuotaResponse].
  /// [interval] Time interval over which the number of request messages is calculated.
  /// [limit] Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  /// [timeUnit] Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or `month`. If `limit` and `interval` are valid, the default value is `hour`; otherwise, the default is null.
  GoogleCloudApigeeV1QuotaResponse({
    required this.interval,
    required this.limit,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'limit': limit,
      'timeUnit': timeUnit,
    };
  }

  factory GoogleCloudApigeeV1QuotaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1QuotaResponse(
      interval: map['interval'] as String,
      limit: map['limit'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}

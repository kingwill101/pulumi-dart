// ignore_for_file: unused_element, unnecessary_cast


/// The scan is scheduled to run periodically.
class GoogleCloudDataplexV1TriggerScheduleResponse {
  /// Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.
  final String cron;

  /// Creates a new [GoogleCloudDataplexV1TriggerScheduleResponse].
  /// [cron] Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.
  GoogleCloudDataplexV1TriggerScheduleResponse({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cron': cron,
    };
  }

  factory GoogleCloudDataplexV1TriggerScheduleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TriggerScheduleResponse(
      cron: map['cron'] as String,
    );
  }
}


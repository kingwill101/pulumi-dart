// ignore_for_file: unused_element, unnecessary_cast

/// The scan is scheduled to run periodically.
class GoogleCloudDataplexV1TriggerSchedule {
  /// Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.
  final String cron;

  GoogleCloudDataplexV1TriggerSchedule({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cron'] = cron;
    return map;
  }

  factory GoogleCloudDataplexV1TriggerSchedule.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TriggerSchedule(
      cron: map['cron'] as String,
    );
  }
}

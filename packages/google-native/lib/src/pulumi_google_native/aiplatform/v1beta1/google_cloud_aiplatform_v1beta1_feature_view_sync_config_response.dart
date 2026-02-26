// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse {
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final String cron;

  GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cron'] = cron;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse(
      cron: map['cron'] as String,
    );
  }
}

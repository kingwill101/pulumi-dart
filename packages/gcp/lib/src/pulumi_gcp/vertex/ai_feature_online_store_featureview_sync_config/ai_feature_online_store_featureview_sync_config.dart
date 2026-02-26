// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreFeatureviewSyncConfig {
  /// If true, syncs the FeatureView in a continuous manner to Online Store.
  final bool? continuous;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}".
  final String? cron;

  AiFeatureOnlineStoreFeatureviewSyncConfig({
    this.continuous,
    this.cron,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continuousValue = continuous;
    if (continuousValue != null) {
      map['continuous'] = continuousValue;
    }
    final cronValue = cron;
    if (cronValue != null) {
      map['cron'] = cronValue;
    }
    return map;
  }

  factory AiFeatureOnlineStoreFeatureviewSyncConfig.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewSyncConfig(
      continuous: map['continuous'] == null ? null : map['continuous'] as bool,
      cron: map['cron'] == null ? null : map['cron'] as String,
    );
  }
}

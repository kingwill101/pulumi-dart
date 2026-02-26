// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for inspect job triggers.
class GooglePrivacyDlpV2ScheduleResponse {
  /// With this option a job is started on a regular periodic basis. For example: every day (86400 seconds). A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs. This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.
  final String recurrencePeriodDuration;

  GooglePrivacyDlpV2ScheduleResponse({
    required this.recurrencePeriodDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recurrencePeriodDuration'] = recurrencePeriodDuration;
    return map;
  }

  factory GooglePrivacyDlpV2ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ScheduleResponse(
      recurrencePeriodDuration: map['recurrencePeriodDuration'] as String,
    );
  }
}

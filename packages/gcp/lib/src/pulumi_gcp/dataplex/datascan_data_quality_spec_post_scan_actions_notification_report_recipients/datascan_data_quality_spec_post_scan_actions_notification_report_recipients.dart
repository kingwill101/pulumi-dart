// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecPostScanActionsNotificationReportRecipients {
  /// The email recipients who will receive the DataQualityScan results report.
  final List<String>? emails;

  DatascanDataQualitySpecPostScanActionsNotificationReportRecipients({
    this.emails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailsValue = emails;
    if (emailsValue != null) {
      map['emails'] = emailsValue;
    }
    return map;
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReportRecipients.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsNotificationReportRecipients(
      emails:
          map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
    );
  }
}

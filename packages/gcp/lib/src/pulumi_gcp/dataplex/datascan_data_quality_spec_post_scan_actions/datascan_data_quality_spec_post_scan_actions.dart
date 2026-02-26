// ignore_for_file: unused_element, unnecessary_cast

import '../datascan_data_quality_spec_post_scan_actions_bigquery_export/datascan_data_quality_spec_post_scan_actions_bigquery_export.dart';
import '../datascan_data_quality_spec_post_scan_actions_notification_report/datascan_data_quality_spec_post_scan_actions_notification_report.dart';

class DatascanDataQualitySpecPostScanActions {
  /// If set, results will be exported to the provided BigQuery table.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsBigqueryExport? bigqueryExport;

  /// The configuration of notification report post scan action.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsNotificationReport?
      notificationReport;

  DatascanDataQualitySpecPostScanActions({
    this.bigqueryExport,
    this.notificationReport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryExportValue = bigqueryExport;
    if (bigqueryExportValue != null) {
      map['bigqueryExport'] = bigqueryExportValue.toMap();
    }
    final notificationReportValue = notificationReport;
    if (notificationReportValue != null) {
      map['notificationReport'] = notificationReportValue.toMap();
    }
    return map;
  }

  factory DatascanDataQualitySpecPostScanActions.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null
          ? null
          : DatascanDataQualitySpecPostScanActionsBigqueryExport.fromMap(
              (map['bigqueryExport'] as Map).cast<String, dynamic>()),
      notificationReport: map['notificationReport'] == null
          ? null
          : DatascanDataQualitySpecPostScanActionsNotificationReport.fromMap(
              (map['notificationReport'] as Map).cast<String, dynamic>()),
    );
  }
}

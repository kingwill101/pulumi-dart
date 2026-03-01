// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_quality_spec_post_scan_actions_bigquery_export.dart';
import 'datascan_data_quality_spec_post_scan_actions_notification_report.dart';

class DatascanDataQualitySpecPostScanActions {
  /// If set, results will be exported to the provided BigQuery table.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsBigqueryExport? bigqueryExport;
  /// The configuration of notification report post scan action.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsNotificationReport? notificationReport;

  /// Creates a new [DatascanDataQualitySpecPostScanActions].
  /// [bigqueryExport] If set, results will be exported to the provided BigQuery table.
  /// [notificationReport] The configuration of notification report post scan action.
  DatascanDataQualitySpecPostScanActions({
    this.bigqueryExport,
    this.notificationReport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': ?bigqueryExport == null ? null : bigqueryExport!.toMap(),
      'notificationReport': ?notificationReport == null ? null : notificationReport!.toMap(),
    };
  }

  factory DatascanDataQualitySpecPostScanActions.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null ? null : DatascanDataQualitySpecPostScanActionsBigqueryExport.fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>()),
      notificationReport: map['notificationReport'] == null ? null : DatascanDataQualitySpecPostScanActionsNotificationReport.fromMap((map['notificationReport'] as Map).cast<String, dynamic>()),
    );
  }
}


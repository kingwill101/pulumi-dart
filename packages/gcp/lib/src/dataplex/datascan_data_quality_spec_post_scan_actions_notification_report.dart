// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_quality_spec_post_scan_actions_notification_report_recipients.dart';
import 'datascan_data_quality_spec_post_scan_actions_notification_report_score_threshold_trigger.dart';

class DatascanDataQualitySpecPostScanActionsNotificationReport {
  /// This trigger is triggered whenever a scan job run ends, regardless of the result.
  final Map<String, dynamic>? jobEndTrigger;
  /// This trigger is triggered when the scan job itself fails, regardless of the result.
  final Map<String, dynamic>? jobFailureTrigger;
  /// The individuals or groups who are designated to receive notifications upon triggers.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsNotificationReportRecipients recipients;
  /// This trigger is triggered when the DQ score in the job result is less than a specified input score.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger? scoreThresholdTrigger;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReport].
  /// [jobEndTrigger] This trigger is triggered whenever a scan job run ends, regardless of the result.
  /// [jobFailureTrigger] This trigger is triggered when the scan job itself fails, regardless of the result.
  /// [recipients] The individuals or groups who are designated to receive notifications upon triggers.
  /// [scoreThresholdTrigger] This trigger is triggered when the DQ score in the job result is less than a specified input score.
  DatascanDataQualitySpecPostScanActionsNotificationReport({
    this.jobEndTrigger,
    this.jobFailureTrigger,
    required this.recipients,
    this.scoreThresholdTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobEndTrigger': ?jobEndTrigger,
      'jobFailureTrigger': ?jobFailureTrigger,
      'recipients': recipients.toMap(),
      'scoreThresholdTrigger': ?scoreThresholdTrigger == null ? null : scoreThresholdTrigger!.toMap(),
    };
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReport.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsNotificationReport(
      jobEndTrigger: map['jobEndTrigger'] == null ? null : (map['jobEndTrigger'] as Map).cast<String, dynamic>(),
      jobFailureTrigger: map['jobFailureTrigger'] == null ? null : (map['jobFailureTrigger'] as Map).cast<String, dynamic>(),
      recipients: DatascanDataQualitySpecPostScanActionsNotificationReportRecipients.fromMap((map['recipients'] as Map).cast<String, dynamic>()),
      scoreThresholdTrigger: map['scoreThresholdTrigger'] == null ? null : DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger.fromMap((map['scoreThresholdTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}


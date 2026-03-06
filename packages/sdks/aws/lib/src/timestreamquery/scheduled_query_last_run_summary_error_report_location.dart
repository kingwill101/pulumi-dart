// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_error_report_location_s3_report_location.dart';

class ScheduledQueryLastRunSummaryErrorReportLocation {
  /// S3 location where error reports are written.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation>>? s3ReportLocations;

  /// Creates a new [ScheduledQueryLastRunSummaryErrorReportLocation].
  /// [s3ReportLocations] S3 location where error reports are written.
  const ScheduledQueryLastRunSummaryErrorReportLocation({
    this.s3ReportLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3ReportLocations': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation>, List<Map<String, dynamic>>>(s3ReportLocations, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryLastRunSummaryErrorReportLocation.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryErrorReportLocation(
      s3ReportLocations: (() { final guardedValue = map['s3ReportLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation>(guardedValue, (value) => ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


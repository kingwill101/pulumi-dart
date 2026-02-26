// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_last_run_summary_error_report_location_s3_report_location/scheduled_query_last_run_summary_error_report_location_s3_report_location.dart';

class ScheduledQueryLastRunSummaryErrorReportLocation {
  /// S3 location where error reports are written.
  final List<ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation>?
      s3ReportLocations;

  ScheduledQueryLastRunSummaryErrorReportLocation({
    this.s3ReportLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3ReportLocationsValue = s3ReportLocations;
    if (s3ReportLocationsValue != null) {
      map['s3ReportLocations'] = Input.encodeList<
              ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation,
              Map<String, dynamic>>(
          s3ReportLocationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryLastRunSummaryErrorReportLocation.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryErrorReportLocation(
      s3ReportLocations: map['s3ReportLocations'] == null
          ? null
          : Input.decodeList<
                  ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation>(
              map['s3ReportLocations'],
              (value) =>
                  ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

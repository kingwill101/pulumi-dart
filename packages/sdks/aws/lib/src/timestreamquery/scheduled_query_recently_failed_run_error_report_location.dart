// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_error_report_location_s3_report_location.dart';

class ScheduledQueryRecentlyFailedRunErrorReportLocation {
  /// S3 location where error reports are written.
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>>? s3ReportLocations;

  /// Creates a new [ScheduledQueryRecentlyFailedRunErrorReportLocation].
  /// [s3ReportLocations] S3 location where error reports are written.
  ScheduledQueryRecentlyFailedRunErrorReportLocation({
    this.s3ReportLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3ReportLocations': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>, List<Map<String, dynamic>>>(s3ReportLocations, (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryRecentlyFailedRunErrorReportLocation.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunErrorReportLocation(
      s3ReportLocations: (() { final guardedValue = map['s3ReportLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>(guardedValue, (value) => ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


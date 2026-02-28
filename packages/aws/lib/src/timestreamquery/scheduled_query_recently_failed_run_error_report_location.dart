// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_error_report_location_s3_report_location.dart';

class ScheduledQueryRecentlyFailedRunErrorReportLocation {
  /// S3 location where error reports are written.
  final List<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>? s3ReportLocations;

  /// Creates a new [ScheduledQueryRecentlyFailedRunErrorReportLocation].
  /// [s3ReportLocations] S3 location where error reports are written.
  ScheduledQueryRecentlyFailedRunErrorReportLocation({
    this.s3ReportLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3ReportLocations': ?s3ReportLocations == null ? null : pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation, Map<String, dynamic>>(s3ReportLocations!, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryRecentlyFailedRunErrorReportLocation.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunErrorReportLocation(
      s3ReportLocations: map['s3ReportLocations'] == null ? null : pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>(map['s3ReportLocations'], (value) => ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


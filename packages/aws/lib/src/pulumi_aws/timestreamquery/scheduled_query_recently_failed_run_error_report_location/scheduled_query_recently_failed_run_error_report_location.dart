// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_recently_failed_run_error_report_location_s3_report_location/scheduled_query_recently_failed_run_error_report_location_s3_report_location.dart';

class ScheduledQueryRecentlyFailedRunErrorReportLocation {
  /// S3 location where error reports are written.
  final List<
          ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>?
      s3ReportLocations;

  ScheduledQueryRecentlyFailedRunErrorReportLocation({
    this.s3ReportLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3ReportLocationsValue = s3ReportLocations;
    if (s3ReportLocationsValue != null) {
      map['s3ReportLocations'] = Input.encodeList<
          ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation,
          Map<String,
              dynamic>>(s3ReportLocationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunErrorReportLocation.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunErrorReportLocation(
      s3ReportLocations: map['s3ReportLocations'] == null
          ? null
          : Input.decodeList<
                  ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation>(
              map['s3ReportLocations'],
              (value) =>
                  ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import '../scheduled_query_error_report_configuration_s3_configuration/scheduled_query_error_report_configuration_s3_configuration.dart';

class ScheduledQueryErrorReportConfiguration {
  /// Configuration block for the S3 configuration for the error reports. See below.
  final ScheduledQueryErrorReportConfigurationS3Configuration s3Configuration;

  ScheduledQueryErrorReportConfiguration({
    required this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Configuration'] = s3Configuration.toMap();
    return map;
  }

  factory ScheduledQueryErrorReportConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryErrorReportConfiguration(
      s3Configuration:
          ScheduledQueryErrorReportConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}

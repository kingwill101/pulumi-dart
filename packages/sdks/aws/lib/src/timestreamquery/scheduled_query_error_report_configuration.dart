// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_error_report_configuration_s3_configuration.dart';

class ScheduledQueryErrorReportConfiguration {
  /// Configuration block for the S3 configuration for the error reports. See below.
  final pulumi.Input<ScheduledQueryErrorReportConfigurationS3Configuration> s3Configuration;

  /// Creates a new [ScheduledQueryErrorReportConfiguration].
  /// [s3Configuration] Configuration block for the S3 configuration for the error reports. See below.
  ScheduledQueryErrorReportConfiguration({
    required this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': pulumi.Input.mapInputValue<ScheduledQueryErrorReportConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryErrorReportConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryErrorReportConfiguration(
      s3Configuration: (ScheduledQueryErrorReportConfigurationS3Configuration.fromMap((map['s3Configuration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


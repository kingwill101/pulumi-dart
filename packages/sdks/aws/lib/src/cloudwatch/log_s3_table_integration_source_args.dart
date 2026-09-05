// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_s3_table_integration_source_data_source.dart';
import 'log_s3_table_integration_source_timeouts.dart';

/// {@template pulumi_cloudwatch_log_s3_table_integration_source_log_s3_table_integration_source_args_doc}
/// The set of arguments for LogS3TableIntegrationSource.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_s3_table_integration_source_log_s3_table_integration_source_args_doc}
class LogS3TableIntegrationSourceArgs {
  /// Data source to associate with the S3 Table Integration. See `dataSource` Block below.
  final pulumi.Input<LogS3TableIntegrationSourceDataSource> dataSource;
  /// ARN of the `aws.observabilityadmin.S3TableIntegration` to associate the data source with.
  final pulumi.Input<String> integrationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<LogS3TableIntegrationSourceTimeouts?>? timeouts;

  /// Creates a new [LogS3TableIntegrationSourceArgs].
  /// [dataSource] Data source to associate with the S3 Table Integration. See `dataSource` Block below.
  /// [integrationArn] ARN of the `aws.observabilityadmin.S3TableIntegration` to associate the data source with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const LogS3TableIntegrationSourceArgs({
    required this.dataSource,
    required this.integrationArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': pulumi.Input.mapInputValue<LogS3TableIntegrationSourceDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'integrationArn': integrationArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LogS3TableIntegrationSourceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LogS3TableIntegrationSourceArgs.fromMap(Map<String, dynamic> map) {
    return LogS3TableIntegrationSourceArgs(
      dataSource: pulumi.Input.fromValue(LogS3TableIntegrationSourceDataSource.fromMap((map['dataSource']! as Map).cast<String, dynamic>())),
      integrationArn: pulumi.Input.fromValue(map['integrationArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogS3TableIntegrationSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_s3_table_integration_source_data_source.dart';
import 'log_s3_table_integration_source_timeouts.dart';

/// Input properties used for looking up and filtering LogS3TableIntegrationSource resources.
class LogS3TableIntegrationSourceState {
  /// Data source to associate with the S3 Table Integration. See `dataSource` Block below.
  final pulumi.Input<LogS3TableIntegrationSourceDataSource?>? dataSource;
  /// ARN of the `aws.observabilityadmin.S3TableIntegration` to associate the data source with.
  final pulumi.Input<String?>? integrationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<LogS3TableIntegrationSourceTimeouts?>? timeouts;

  /// Creates a new [LogS3TableIntegrationSourceState].
  /// [dataSource] Data source to associate with the S3 Table Integration. See `dataSource` Block below.
  /// [integrationArn] ARN of the `aws.observabilityadmin.S3TableIntegration` to associate the data source with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const LogS3TableIntegrationSourceState({
    this.dataSource,
    this.integrationArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': ?pulumi.Input.mapOptionalInputValue<LogS3TableIntegrationSourceDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'integrationArn': ?integrationArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LogS3TableIntegrationSourceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LogS3TableIntegrationSourceState.fromMap(Map<String, dynamic> map) {
    return LogS3TableIntegrationSourceState(
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogS3TableIntegrationSourceDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationArn: (() { final guardedValue = map['integrationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogS3TableIntegrationSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

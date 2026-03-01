// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_redshift_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_redshift_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_s3_backup_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamRedshiftConfiguration {
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  /// The jdbcurl of the redshift cluster.
  final String clusterJdbcurl;

  /// Copy options for copying the data from the s3 intermediate bucket into redshift, for example to change the default delimiter. For valid values, see the [AWS documentation](http://docs.aws.amazon.com/firehose/latest/APIReference/API_CopyCommand.html)
  final String? copyOptions;

  /// The data table columns that will be targeted by the copy command.
  final String? dataTableColumns;

  /// The name of the table in the redshift cluster that the s3 bucket will copy to.
  final String dataTableName;

  /// The password for the username above. This value is required if `secrets_manager_configuration` is not provided.
  final String? password;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration?
  processingConfiguration;

  /// The length of time during which Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Firehose does not retry if the value of DurationInSeconds is 0 (zero) or if the first delivery attempt takes longer than the current value.
  final int? retryDuration;

  /// The arn of the role the stream assumes.
  final String roleArn;

  /// The configuration for backup in Amazon S3. Required if `s3_backup_mode` is `Enabled`. Supports the same fields as `s3_configuration` object.
  /// `secrets_manager_configuration` - (Optional) The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `username` and `password` are not provided.
  final FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration?
  s3BackupConfiguration;

  /// The Amazon S3 backup mode.  Valid values are `Disabled` and `Enabled`.  Default value is `Disabled`.
  final String? s3BackupMode;

  /// The S3 Configuration. See s3_configuration below for details.
  final FirehoseDeliveryStreamRedshiftConfigurationS3Configuration
  s3Configuration;
  final FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  /// The username that the firehose delivery stream will assume. It is strongly recommended that the username and password provided is used exclusively for Amazon Kinesis Firehose purposes, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions. This value is required if `secrets_manager_configuration` is not provided.
  final String? username;

  /// Creates a new [FirehoseDeliveryStreamRedshiftConfiguration].
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [clusterJdbcurl] The jdbcurl of the redshift cluster.
  /// [copyOptions] Copy options for copying the data from the s3 intermediate bucket into redshift, for example to change the default delimiter. For valid values, see the [AWS documentation](http://docs.aws.amazon.com/firehose/latest/APIReference/API_CopyCommand.html)
  /// [dataTableColumns] The data table columns that will be targeted by the copy command.
  /// [dataTableName] The name of the table in the redshift cluster that the s3 bucket will copy to.
  /// [password] The password for the username above. This value is required if `secrets_manager_configuration` is not provided.
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [retryDuration] The length of time during which Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Firehose does not retry if the value of DurationInSeconds is 0 (zero) or if the first delivery attempt takes longer than the current value.
  /// [roleArn] The arn of the role the stream assumes.
  /// [s3BackupConfiguration] The configuration for backup in Amazon S3. Required if `s3_backup_mode` is `Enabled`. Supports the same fields as `s3_configuration` object.
  /// [s3BackupMode] The Amazon S3 backup mode.  Valid values are `Disabled` and `Enabled`.  Default value is `Disabled`.
  /// [s3Configuration] The S3 Configuration. See s3_configuration below for details.
  /// [secretsManagerConfiguration] Optional.
  /// [username] The username that the firehose delivery stream will assume. It is strongly recommended that the username and password provided is used exclusively for Amazon Kinesis Firehose purposes, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions. This value is required if `secrets_manager_configuration` is not provided.
  FirehoseDeliveryStreamRedshiftConfiguration({
    this.cloudwatchLoggingOptions,
    required this.clusterJdbcurl,
    this.copyOptions,
    this.dataTableColumns,
    required this.dataTableName,
    this.password,
    this.processingConfiguration,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupConfiguration,
    this.s3BackupMode,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLoggingOptions': ?cloudwatchLoggingOptions == null
          ? null
          : cloudwatchLoggingOptions!.toMap(),
      'clusterJdbcurl': clusterJdbcurl,
      'copyOptions': ?copyOptions,
      'dataTableColumns': ?dataTableColumns,
      'dataTableName': dataTableName,
      'password': ?password,
      'processingConfiguration': ?processingConfiguration == null
          ? null
          : processingConfiguration!.toMap(),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupConfiguration': ?s3BackupConfiguration == null
          ? null
          : s3BackupConfiguration!.toMap(),
      's3BackupMode': ?s3BackupMode,
      's3Configuration': s3Configuration.toMap(),
      'secretsManagerConfiguration': ?secretsManagerConfiguration == null
          ? null
          : secretsManagerConfiguration!.toMap(),
      'username': ?username,
    };
  }

  factory FirehoseDeliveryStreamRedshiftConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamRedshiftConfiguration(
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions.fromMap(
              (map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>(),
            ),
      clusterJdbcurl: map['clusterJdbcurl'] as String,
      copyOptions: map['copyOptions'] == null
          ? null
          : map['copyOptions'] as String,
      dataTableColumns: map['dataTableColumns'] == null
          ? null
          : map['dataTableColumns'] as String,
      dataTableName: map['dataTableName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration.fromMap(
              (map['processingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      retryDuration: map['retryDuration'] == null
          ? null
          : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupConfiguration: map['s3BackupConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration.fromMap(
              (map['s3BackupConfiguration'] as Map).cast<String, dynamic>(),
            ),
      s3BackupMode: map['s3BackupMode'] == null
          ? null
          : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamRedshiftConfigurationS3Configuration.fromMap(
            (map['s3Configuration'] as Map).cast<String, dynamic>(),
          ),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration.fromMap(
              (map['secretsManagerConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

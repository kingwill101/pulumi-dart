// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_redshift_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_redshift_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_s3_backup_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamRedshiftConfiguration {
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The jdbcurl of the redshift cluster.
  final pulumi.Input<String> clusterJdbcurl;
  /// Copy options for copying the data from the s3 intermediate bucket into redshift, for example to change the default delimiter. For valid values, see the [AWS documentation](http://docs.aws.amazon.com/firehose/latest/APIReference/API_CopyCommand.html)
  final pulumi.Input<String>? copyOptions;
  /// The data table columns that will be targeted by the copy command.
  final pulumi.Input<String>? dataTableColumns;
  /// The name of the table in the redshift cluster that the s3 bucket will copy to.
  final pulumi.Input<String> dataTableName;
  /// The password for the username above. This value is required if `secrets_manager_configuration` is not provided.
  final pulumi.Input<String>? password;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration>? processingConfiguration;
  /// The length of time during which Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Firehose does not retry if the value of DurationInSeconds is 0 (zero) or if the first delivery attempt takes longer than the current value.
  final pulumi.Input<int>? retryDuration;
  /// The arn of the role the stream assumes.
  final pulumi.Input<String> roleArn;
  /// The configuration for backup in Amazon S3. Required if `s3_backup_mode` is `Enabled`. Supports the same fields as `s3_configuration` object.
  /// `secrets_manager_configuration` - (Optional) The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `username` and `password` are not provided.
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration>? s3BackupConfiguration;
  /// The Amazon S3 backup mode.  Valid values are `Disabled` and `Enabled`.  Default value is `Disabled`.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See s3_configuration below for details.
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfigurationS3Configuration> s3Configuration;
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration>? secretsManagerConfiguration;
  /// The username that the firehose delivery stream will assume. It is strongly recommended that the username and password provided is used exclusively for Amazon Kinesis Firehose purposes, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions. This value is required if `secrets_manager_configuration` is not provided.
  final pulumi.Input<String>? username;

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
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'clusterJdbcurl': clusterJdbcurl,
      'copyOptions': ?copyOptions,
      'dataTableColumns': ?dataTableColumns,
      'dataTableName': dataTableName,
      'password': ?password,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration, Map<String, dynamic>>(s3BackupConfiguration, (value) => value.toMap()),
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamRedshiftConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'secretsManagerConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration, Map<String, dynamic>>(secretsManagerConfiguration, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory FirehoseDeliveryStreamRedshiftConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamRedshiftConfiguration(
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((FirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      clusterJdbcurl: (map['clusterJdbcurl'] as String).input(),
      copyOptions: map['copyOptions'] == null ? null : ((map['copyOptions'] as String).input()).input(),
      dataTableColumns: map['dataTableColumns'] == null ? null : ((map['dataTableColumns'] as String).input()).input(),
      dataTableName: (map['dataTableName'] as String).input(),
      password: map['password'] == null ? null : ((map['password'] as String).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      retryDuration: map['retryDuration'] == null ? null : ((map['retryDuration'] as int).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      s3BackupConfiguration: map['s3BackupConfiguration'] == null ? null : ((FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration.fromMap((map['s3BackupConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : ((map['s3BackupMode'] as String).input()).input(),
      s3Configuration: (FirehoseDeliveryStreamRedshiftConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())).input(),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null ? null : ((FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration.fromMap((map['secretsManagerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      username: map['username'] == null ? null : ((map['username'] as String).input()).input(),
    );
  }
}


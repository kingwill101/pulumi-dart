// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_snowflake_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_secrets_manager_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_role_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_vpc_configuration.dart';

class FirehoseDeliveryStreamSnowflakeConfiguration {
  /// The URL of the Snowflake account. Format: https://[account_identifier].snowflakecomputing.com.
  final String accountUrl;

  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  /// The name of the content column.
  final String? contentColumnName;

  /// The data loading option.
  final String? dataLoadingOption;

  /// The Snowflake database name.
  final String database;

  /// The passphrase for the private key.
  final String? keyPassphrase;

  /// The name of the metadata column.
  final String? metadataColumnName;

  /// The private key for authentication. This value is required if `secrets_manager_configuration` is not provided.
  final String? privateKey;

  /// The processing configuration. See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration?
  processingConfiguration;

  /// After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// The ARN of the IAM role.
  final String roleArn;

  /// The S3 backup mode.
  final String? s3BackupMode;

  /// The S3 configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration
  s3Configuration;

  /// The Snowflake schema name.
  final String schema;

  /// The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `user` and `private_key` are not provided.
  final FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  /// The configuration for Snowflake role.
  final FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration?
  snowflakeRoleConfiguration;

  /// The VPC configuration for Snowflake.
  final FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration?
  snowflakeVpcConfiguration;

  /// The Snowflake table name.
  final String table;

  /// The user for authentication. This value is required if `secrets_manager_configuration` is not provided.
  final String? user;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfiguration].
  /// [accountUrl] The URL of the Snowflake account. Format: https://[account_identifier].snowflakecomputing.com.
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [contentColumnName] The name of the content column.
  /// [dataLoadingOption] The data loading option.
  /// [database] The Snowflake database name.
  /// [keyPassphrase] The passphrase for the private key.
  /// [metadataColumnName] The name of the metadata column.
  /// [privateKey] The private key for authentication. This value is required if `secrets_manager_configuration` is not provided.
  /// [processingConfiguration] The processing configuration. See `processing_configuration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  /// [roleArn] The ARN of the IAM role.
  /// [s3BackupMode] The S3 backup mode.
  /// [s3Configuration] The S3 configuration. See `s3_configuration` block below for details.
  /// [schema] The Snowflake schema name.
  /// [secretsManagerConfiguration] The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `user` and `private_key` are not provided.
  /// [snowflakeRoleConfiguration] The configuration for Snowflake role.
  /// [snowflakeVpcConfiguration] The VPC configuration for Snowflake.
  /// [table] The Snowflake table name.
  /// [user] The user for authentication. This value is required if `secrets_manager_configuration` is not provided.
  FirehoseDeliveryStreamSnowflakeConfiguration({
    required this.accountUrl,
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.contentColumnName,
    this.dataLoadingOption,
    required this.database,
    this.keyPassphrase,
    this.metadataColumnName,
    this.privateKey,
    this.processingConfiguration,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    required this.s3Configuration,
    required this.schema,
    this.secretsManagerConfiguration,
    this.snowflakeRoleConfiguration,
    this.snowflakeVpcConfiguration,
    required this.table,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUrl': accountUrl,
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?cloudwatchLoggingOptions == null
          ? null
          : cloudwatchLoggingOptions!.toMap(),
      'contentColumnName': ?contentColumnName,
      'dataLoadingOption': ?dataLoadingOption,
      'database': database,
      'keyPassphrase': ?keyPassphrase,
      'metadataColumnName': ?metadataColumnName,
      'privateKey': ?privateKey,
      'processingConfiguration': ?processingConfiguration == null
          ? null
          : processingConfiguration!.toMap(),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': s3Configuration.toMap(),
      'schema': schema,
      'secretsManagerConfiguration': ?secretsManagerConfiguration == null
          ? null
          : secretsManagerConfiguration!.toMap(),
      'snowflakeRoleConfiguration': ?snowflakeRoleConfiguration == null
          ? null
          : snowflakeRoleConfiguration!.toMap(),
      'snowflakeVpcConfiguration': ?snowflakeVpcConfiguration == null
          ? null
          : snowflakeVpcConfiguration!.toMap(),
      'table': table,
      'user': ?user,
    };
  }

  factory FirehoseDeliveryStreamSnowflakeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamSnowflakeConfiguration(
      accountUrl: map['accountUrl'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize: map['bufferingSize'] == null
          ? null
          : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions.fromMap(
              (map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>(),
            ),
      contentColumnName: map['contentColumnName'] == null
          ? null
          : map['contentColumnName'] as String,
      dataLoadingOption: map['dataLoadingOption'] == null
          ? null
          : map['dataLoadingOption'] as String,
      database: map['database'] as String,
      keyPassphrase: map['keyPassphrase'] == null
          ? null
          : map['keyPassphrase'] as String,
      metadataColumnName: map['metadataColumnName'] == null
          ? null
          : map['metadataColumnName'] as String,
      privateKey: map['privateKey'] == null
          ? null
          : map['privateKey'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration.fromMap(
              (map['processingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      retryDuration: map['retryDuration'] == null
          ? null
          : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode: map['s3BackupMode'] == null
          ? null
          : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration.fromMap(
            (map['s3Configuration'] as Map).cast<String, dynamic>(),
          ),
      schema: map['schema'] as String,
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration.fromMap(
              (map['secretsManagerConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      snowflakeRoleConfiguration: map['snowflakeRoleConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration.fromMap(
              (map['snowflakeRoleConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      snowflakeVpcConfiguration: map['snowflakeVpcConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration.fromMap(
              (map['snowflakeVpcConfiguration'] as Map).cast<String, dynamic>(),
            ),
      table: map['table'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_snowflake_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_secrets_manager_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_role_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_vpc_configuration.dart';

class FirehoseDeliveryStreamSnowflakeConfiguration {
  /// The URL of the Snowflake account. Format: https://[account_identifier].snowflakecomputing.com.
  final pulumi.Input<String> accountUrl;
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  final pulumi.Input<int>? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The name of the content column.
  final pulumi.Input<String>? contentColumnName;
  /// The data loading option.
  final pulumi.Input<String>? dataLoadingOption;
  /// The Snowflake database name.
  final pulumi.Input<String> database;
  /// The passphrase for the private key.
  final pulumi.Input<String>? keyPassphrase;
  /// The name of the metadata column.
  final pulumi.Input<String>? metadataColumnName;
  /// The private key for authentication. This value is required if `secrets_manager_configuration` is not provided.
  final pulumi.Input<String>? privateKey;
  /// The processing configuration. See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// The ARN of the IAM role.
  final pulumi.Input<String> roleArn;
  /// The S3 backup mode.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 configuration. See `s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration> s3Configuration;
  /// The Snowflake schema name.
  final pulumi.Input<String> schema;
  /// The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `user` and `private_key` are not provided.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration>? secretsManagerConfiguration;
  /// The configuration for Snowflake role.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration>? snowflakeRoleConfiguration;
  /// The VPC configuration for Snowflake.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration>? snowflakeVpcConfiguration;
  /// The Snowflake table name.
  final pulumi.Input<String> table;
  /// The user for authentication. This value is required if `secrets_manager_configuration` is not provided.
  final pulumi.Input<String>? user;

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
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'contentColumnName': ?contentColumnName,
      'dataLoadingOption': ?dataLoadingOption,
      'database': database,
      'keyPassphrase': ?keyPassphrase,
      'metadataColumnName': ?metadataColumnName,
      'privateKey': ?privateKey,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'schema': schema,
      'secretsManagerConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration, Map<String, dynamic>>(secretsManagerConfiguration, (value) => value.toMap()),
      'snowflakeRoleConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration, Map<String, dynamic>>(snowflakeRoleConfiguration, (value) => value.toMap()),
      'snowflakeVpcConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration, Map<String, dynamic>>(snowflakeVpcConfiguration, (value) => value.toMap()),
      'table': table,
      'user': ?user,
    };
  }

  factory FirehoseDeliveryStreamSnowflakeConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfiguration(
      accountUrl: (map['accountUrl'] as String).input(),
      bufferingInterval: map['bufferingInterval'] == null ? null : ((map['bufferingInterval'] as int).input()).input(),
      bufferingSize: map['bufferingSize'] == null ? null : ((map['bufferingSize'] as int).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      contentColumnName: map['contentColumnName'] == null ? null : ((map['contentColumnName'] as String).input()).input(),
      dataLoadingOption: map['dataLoadingOption'] == null ? null : ((map['dataLoadingOption'] as String).input()).input(),
      database: (map['database'] as String).input(),
      keyPassphrase: map['keyPassphrase'] == null ? null : ((map['keyPassphrase'] as String).input()).input(),
      metadataColumnName: map['metadataColumnName'] == null ? null : ((map['metadataColumnName'] as String).input()).input(),
      privateKey: map['privateKey'] == null ? null : ((map['privateKey'] as String).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      retryDuration: map['retryDuration'] == null ? null : ((map['retryDuration'] as int).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : ((map['s3BackupMode'] as String).input()).input(),
      s3Configuration: (FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())).input(),
      schema: (map['schema'] as String).input(),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration.fromMap((map['secretsManagerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      snowflakeRoleConfiguration: map['snowflakeRoleConfiguration'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration.fromMap((map['snowflakeRoleConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      snowflakeVpcConfiguration: map['snowflakeVpcConfiguration'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration.fromMap((map['snowflakeVpcConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      table: (map['table'] as String).input(),
      user: map['user'] == null ? null : ((map['user'] as String).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_snowflake_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_secrets_manager_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_role_configuration.dart';
import 'firehose_delivery_stream_snowflake_configuration_snowflake_vpc_configuration.dart';

class FirehoseDeliveryStreamSnowflakeConfiguration {
  /// URL of the Snowflake account. Format: https://[accountIdentifier].snowflakecomputing.com.
  final pulumi.Input<String> accountUrl;
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  final pulumi.Input<int?>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  final pulumi.Input<int?>? bufferingSize;
  /// CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions?>? cloudwatchLoggingOptions;
  /// Name of the content column.
  final pulumi.Input<String?>? contentColumnName;
  /// Data loading option.
  final pulumi.Input<String?>? dataLoadingOption;
  /// Snowflake database name.
  final pulumi.Input<String> database;
  /// Passphrase for the private key.
  final pulumi.Input<String?>? keyPassphrase;
  /// Name of the metadata column.
  final pulumi.Input<String?>? metadataColumnName;
  /// Private key for authentication. This value is required if `secretsManagerConfiguration` is not provided.
  final pulumi.Input<String?>? privateKey;
  /// Processing configuration. See `processingConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration?>? processingConfiguration;
  /// After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  final pulumi.Input<int?>? retryDuration;
  /// ARN of the IAM role.
  final pulumi.Input<String> roleArn;
  /// S3 backup mode.
  final pulumi.Input<String?>? s3BackupMode;
  /// S3 configuration. See `s3Configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration> s3Configuration;
  /// Snowflake schema name.
  final pulumi.Input<String> schema;
  /// Secrets Manager configuration. See `secretsManagerConfiguration` block below for details. This value is required if `user` and `privateKey` are not provided.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration?>? secretsManagerConfiguration;
  /// Configuration for Snowflake role. See `snowflakeRoleConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration?>? snowflakeRoleConfiguration;
  /// VPC configuration for Snowflake. See `snowflakeVpcConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration?>? snowflakeVpcConfiguration;
  /// Snowflake table name.
  final pulumi.Input<String> table;
  /// User for authentication. This value is required if `secretsManagerConfiguration` is not provided.
  final pulumi.Input<String?>? user;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfiguration].
  /// [accountUrl] URL of the Snowflake account. Format: https://[accountIdentifier].snowflakecomputing.com.
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  /// [cloudwatchLoggingOptions] CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  /// [contentColumnName] Name of the content column.
  /// [dataLoadingOption] Data loading option.
  /// [database] Snowflake database name.
  /// [keyPassphrase] Passphrase for the private key.
  /// [metadataColumnName] Name of the metadata column.
  /// [privateKey] Private key for authentication. This value is required if `secretsManagerConfiguration` is not provided.
  /// [processingConfiguration] Processing configuration. See `processingConfiguration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  /// [roleArn] ARN of the IAM role.
  /// [s3BackupMode] S3 backup mode.
  /// [s3Configuration] S3 configuration. See `s3Configuration` block below for details.
  /// [schema] Snowflake schema name.
  /// [secretsManagerConfiguration] Secrets Manager configuration. See `secretsManagerConfiguration` block below for details. This value is required if `user` and `privateKey` are not provided.
  /// [snowflakeRoleConfiguration] Configuration for Snowflake role. See `snowflakeRoleConfiguration` block below for details.
  /// [snowflakeVpcConfiguration] VPC configuration for Snowflake. See `snowflakeVpcConfiguration` block below for details.
  /// [table] Snowflake table name.
  /// [user] User for authentication. This value is required if `secretsManagerConfiguration` is not provided.
  const FirehoseDeliveryStreamSnowflakeConfiguration({
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
      accountUrl: pulumi.Input.fromValue(map['accountUrl'] as String),
      bufferingInterval: (() { final guardedValue = map['bufferingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bufferingSize: (() { final guardedValue = map['bufferingSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentColumnName: (() { final guardedValue = map['contentColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataLoadingOption: (() { final guardedValue = map['dataLoadingOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      keyPassphrase: (() { final guardedValue = map['keyPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataColumnName: (() { final guardedValue = map['metadataColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryDuration: (() { final guardedValue = map['retryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3BackupMode: (() { final guardedValue = map['s3BackupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Configuration: pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      secretsManagerConfiguration: (() { final guardedValue = map['secretsManagerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snowflakeRoleConfiguration: (() { final guardedValue = map['snowflakeRoleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snowflakeVpcConfiguration: (() { final guardedValue = map['snowflakeVpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

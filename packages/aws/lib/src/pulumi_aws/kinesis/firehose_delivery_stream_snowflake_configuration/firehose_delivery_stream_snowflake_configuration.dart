// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_snowflake_configuration_cloudwatch_logging_options/firehose_delivery_stream_snowflake_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_snowflake_configuration_processing_configuration/firehose_delivery_stream_snowflake_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_snowflake_configuration_s3_configuration/firehose_delivery_stream_snowflake_configuration_s3_configuration.dart';
import '../firehose_delivery_stream_snowflake_configuration_secrets_manager_configuration/firehose_delivery_stream_snowflake_configuration_secrets_manager_configuration.dart';
import '../firehose_delivery_stream_snowflake_configuration_snowflake_role_configuration/firehose_delivery_stream_snowflake_configuration_snowflake_role_configuration.dart';
import '../firehose_delivery_stream_snowflake_configuration_snowflake_vpc_configuration/firehose_delivery_stream_snowflake_configuration_snowflake_vpc_configuration.dart';

class FirehoseDeliveryStreamSnowflakeConfiguration {
  /// The URL of the Snowflake account. Format: https://<span pulumi-lang-nodejs="[accountIdentifier]" pulumi-lang-dotnet="[AccountIdentifier]" pulumi-lang-go="[accountIdentifier]" pulumi-lang-python="[account_identifier]" pulumi-lang-yaml="[accountIdentifier]" pulumi-lang-java="[accountIdentifier]">[account_identifier]</span>.snowflakecomputing.com.
  final String accountUrl;

  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 0s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 128, before delivering it to the destination.  The default value is 1MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See <span pulumi-lang-nodejs="`cloudwatchLoggingOptions`" pulumi-lang-dotnet="`CloudwatchLoggingOptions`" pulumi-lang-go="`cloudwatchLoggingOptions`" pulumi-lang-python="`cloudwatch_logging_options`" pulumi-lang-yaml="`cloudwatchLoggingOptions`" pulumi-lang-java="`cloudwatchLoggingOptions`">`cloudwatch_logging_options`</span> block below for details.
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

  /// The private key for authentication. This value is required if <span pulumi-lang-nodejs="`secretsManagerConfiguration`" pulumi-lang-dotnet="`SecretsManagerConfiguration`" pulumi-lang-go="`secretsManagerConfiguration`" pulumi-lang-python="`secrets_manager_configuration`" pulumi-lang-yaml="`secretsManagerConfiguration`" pulumi-lang-java="`secretsManagerConfiguration`">`secrets_manager_configuration`</span> is not provided.
  final String? privateKey;

  /// The processing configuration. See <span pulumi-lang-nodejs="`processingConfiguration`" pulumi-lang-dotnet="`ProcessingConfiguration`" pulumi-lang-go="`processingConfiguration`" pulumi-lang-python="`processing_configuration`" pulumi-lang-yaml="`processingConfiguration`" pulumi-lang-java="`processingConfiguration`">`processing_configuration`</span> block below for details.
  final FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration?
      processingConfiguration;

  /// After an initial failure to deliver to Snowflake, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 60s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// The ARN of the IAM role.
  final String roleArn;

  /// The S3 backup mode.
  final String? s3BackupMode;

  /// The S3 configuration. See <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block below for details.
  final FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration
      s3Configuration;

  /// The Snowflake schema name.
  final String schema;

  /// The Secrets Manager configuration. See <span pulumi-lang-nodejs="`secretsManagerConfiguration`" pulumi-lang-dotnet="`SecretsManagerConfiguration`" pulumi-lang-go="`secretsManagerConfiguration`" pulumi-lang-python="`secrets_manager_configuration`" pulumi-lang-yaml="`secretsManagerConfiguration`" pulumi-lang-java="`secretsManagerConfiguration`">`secrets_manager_configuration`</span> block below for details. This value is required if <span pulumi-lang-nodejs="`user`" pulumi-lang-dotnet="`User`" pulumi-lang-go="`user`" pulumi-lang-python="`user`" pulumi-lang-yaml="`user`" pulumi-lang-java="`user`">`user`</span> and <span pulumi-lang-nodejs="`privateKey`" pulumi-lang-dotnet="`PrivateKey`" pulumi-lang-go="`privateKey`" pulumi-lang-python="`private_key`" pulumi-lang-yaml="`privateKey`" pulumi-lang-java="`privateKey`">`private_key`</span> are not provided.
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

  /// The user for authentication. This value is required if <span pulumi-lang-nodejs="`secretsManagerConfiguration`" pulumi-lang-dotnet="`SecretsManagerConfiguration`" pulumi-lang-go="`secretsManagerConfiguration`" pulumi-lang-python="`secrets_manager_configuration`" pulumi-lang-yaml="`secretsManagerConfiguration`" pulumi-lang-java="`secretsManagerConfiguration`">`secrets_manager_configuration`</span> is not provided.
  final String? user;

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
    final map = <String, dynamic>{};
    map['accountUrl'] = accountUrl;
    final bufferingIntervalValue = bufferingInterval;
    if (bufferingIntervalValue != null) {
      map['bufferingInterval'] = bufferingIntervalValue;
    }
    final bufferingSizeValue = bufferingSize;
    if (bufferingSizeValue != null) {
      map['bufferingSize'] = bufferingSizeValue;
    }
    final cloudwatchLoggingOptionsValue = cloudwatchLoggingOptions;
    if (cloudwatchLoggingOptionsValue != null) {
      map['cloudwatchLoggingOptions'] = cloudwatchLoggingOptionsValue.toMap();
    }
    final contentColumnNameValue = contentColumnName;
    if (contentColumnNameValue != null) {
      map['contentColumnName'] = contentColumnNameValue;
    }
    final dataLoadingOptionValue = dataLoadingOption;
    if (dataLoadingOptionValue != null) {
      map['dataLoadingOption'] = dataLoadingOptionValue;
    }
    map['database'] = database;
    final keyPassphraseValue = keyPassphrase;
    if (keyPassphraseValue != null) {
      map['keyPassphrase'] = keyPassphraseValue;
    }
    final metadataColumnNameValue = metadataColumnName;
    if (metadataColumnNameValue != null) {
      map['metadataColumnName'] = metadataColumnNameValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final processingConfigurationValue = processingConfiguration;
    if (processingConfigurationValue != null) {
      map['processingConfiguration'] = processingConfigurationValue.toMap();
    }
    final retryDurationValue = retryDuration;
    if (retryDurationValue != null) {
      map['retryDuration'] = retryDurationValue;
    }
    map['roleArn'] = roleArn;
    final s3BackupModeValue = s3BackupMode;
    if (s3BackupModeValue != null) {
      map['s3BackupMode'] = s3BackupModeValue;
    }
    map['s3Configuration'] = s3Configuration.toMap();
    map['schema'] = schema;
    final secretsManagerConfigurationValue = secretsManagerConfiguration;
    if (secretsManagerConfigurationValue != null) {
      map['secretsManagerConfiguration'] =
          secretsManagerConfigurationValue.toMap();
    }
    final snowflakeRoleConfigurationValue = snowflakeRoleConfiguration;
    if (snowflakeRoleConfigurationValue != null) {
      map['snowflakeRoleConfiguration'] =
          snowflakeRoleConfigurationValue.toMap();
    }
    final snowflakeVpcConfigurationValue = snowflakeVpcConfiguration;
    if (snowflakeVpcConfigurationValue != null) {
      map['snowflakeVpcConfiguration'] = snowflakeVpcConfigurationValue.toMap();
    }
    map['table'] = table;
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamSnowflakeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfiguration(
      accountUrl: map['accountUrl'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      contentColumnName: map['contentColumnName'] == null
          ? null
          : map['contentColumnName'] as String,
      dataLoadingOption: map['dataLoadingOption'] == null
          ? null
          : map['dataLoadingOption'] as String,
      database: map['database'] as String,
      keyPassphrase:
          map['keyPassphrase'] == null ? null : map['keyPassphrase'] as String,
      metadataColumnName: map['metadataColumnName'] == null
          ? null
          : map['metadataColumnName'] as String,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamSnowflakeConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
      schema: map['schema'] as String,
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration
              .fromMap((map['secretsManagerConfiguration'] as Map)
                  .cast<String, dynamic>()),
      snowflakeRoleConfiguration: map['snowflakeRoleConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration
              .fromMap((map['snowflakeRoleConfiguration'] as Map)
                  .cast<String, dynamic>()),
      snowflakeVpcConfiguration: map['snowflakeVpcConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration
              .fromMap((map['snowflakeVpcConfiguration'] as Map)
                  .cast<String, dynamic>()),
      table: map['table'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_elasticsearch_configuration/firehose_delivery_stream_elasticsearch_configuration.dart';
import '../firehose_delivery_stream_extended_s3_configuration/firehose_delivery_stream_extended_s3_configuration.dart';
import '../firehose_delivery_stream_http_endpoint_configuration/firehose_delivery_stream_http_endpoint_configuration.dart';
import '../firehose_delivery_stream_iceberg_configuration/firehose_delivery_stream_iceberg_configuration.dart';
import '../firehose_delivery_stream_kinesis_source_configuration/firehose_delivery_stream_kinesis_source_configuration.dart';
import '../firehose_delivery_stream_msk_source_configuration/firehose_delivery_stream_msk_source_configuration.dart';
import '../firehose_delivery_stream_opensearch_configuration/firehose_delivery_stream_opensearch_configuration.dart';
import '../firehose_delivery_stream_opensearchserverless_configuration/firehose_delivery_stream_opensearchserverless_configuration.dart';
import '../firehose_delivery_stream_redshift_configuration/firehose_delivery_stream_redshift_configuration.dart';
import '../firehose_delivery_stream_server_side_encryption/firehose_delivery_stream_server_side_encryption.dart';
import '../firehose_delivery_stream_snowflake_configuration/firehose_delivery_stream_snowflake_configuration.dart';
import '../firehose_delivery_stream_splunk_configuration/firehose_delivery_stream_splunk_configuration.dart';

/// The set of arguments for FirehoseDeliveryStream.
class FirehoseDeliveryStreamArgs {
  /// The Amazon Resource Name (ARN) specifying the Stream
  final Input<String>? arn;

  /// This is the destination to where the data is delivered. The only options are `s3` (Deprecated, use `extended_s3` instead), `extended_s3`, `redshift`, `elasticsearch`, `splunk`, `http_endpoint`, `opensearch`, `opensearchserverless` and `snowflake`.
  final Input<String> destination;
  final Input<String>? destinationId;

  /// Configuration options when `destination` is `elasticsearch`. See `elasticsearch_configuration` block below for details.
  final Input<FirehoseDeliveryStreamElasticsearchConfiguration>?
      elasticsearchConfiguration;

  /// Enhanced configuration options for the s3 destination. See `extended_s3_configuration` block below for details.
  final Input<FirehoseDeliveryStreamExtendedS3Configuration>?
      extendedS3Configuration;

  /// Configuration options when `destination` is `http_endpoint`. Requires the user to also specify an `s3_configuration` block.  See `http_endpoint_configuration` block below for details.
  final Input<FirehoseDeliveryStreamHttpEndpointConfiguration>?
      httpEndpointConfiguration;

  /// Configuration options when `destination` is `iceberg`. See `iceberg_configuration` block below for details.
  final Input<FirehoseDeliveryStreamIcebergConfiguration>? icebergConfiguration;

  /// The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See `kinesis_source_configuration` block below for details.
  final Input<FirehoseDeliveryStreamKinesisSourceConfiguration>?
      kinesisSourceConfiguration;

  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See `msk_source_configuration` block below for details.
  final Input<FirehoseDeliveryStreamMskSourceConfiguration>?
      mskSourceConfiguration;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  final Input<String>? name;

  /// Configuration options when `destination` is `opensearch`. See `opensearch_configuration` block below for details.
  final Input<FirehoseDeliveryStreamOpensearchConfiguration>?
      opensearchConfiguration;

  /// Configuration options when `destination` is `opensearchserverless`. See `opensearchserverless_configuration` block below for details.
  final Input<FirehoseDeliveryStreamOpensearchserverlessConfiguration>?
      opensearchserverlessConfiguration;

  /// Configuration options when `destination` is `redshift`. Requires the user to also specify an `s3_configuration` block. See `redshift_configuration` block below for details.
  final Input<FirehoseDeliveryStreamRedshiftConfiguration>?
      redshiftConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Encrypt at rest options. See `server_side_encryption` block below for details.
  final Input<FirehoseDeliveryStreamServerSideEncryption>? serverSideEncryption;

  /// Configuration options when `destination` is `snowflake`. See `snowflake_configuration` block below for details.
  final Input<FirehoseDeliveryStreamSnowflakeConfiguration>?
      snowflakeConfiguration;

  /// Configuration options when `destination` is `splunk`. See `splunk_configuration` block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  final Input<FirehoseDeliveryStreamSplunkConfiguration>? splunkConfiguration;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<String>? versionId;

  FirehoseDeliveryStreamArgs({
    this.arn,
    required this.destination,
    this.destinationId,
    this.elasticsearchConfiguration,
    this.extendedS3Configuration,
    this.httpEndpointConfiguration,
    this.icebergConfiguration,
    this.kinesisSourceConfiguration,
    this.mskSourceConfiguration,
    this.name,
    this.opensearchConfiguration,
    this.opensearchserverlessConfiguration,
    this.redshiftConfiguration,
    this.region,
    this.serverSideEncryption,
    this.snowflakeConfiguration,
    this.splunkConfiguration,
    this.tags,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    map['destination'] = destination;
    final destinationIdValue = destinationId;
    if (destinationIdValue != null) {
      map['destinationId'] = destinationIdValue;
    }
    final elasticsearchConfigurationValue = elasticsearchConfiguration;
    if (elasticsearchConfigurationValue != null) {
      map['elasticsearchConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamElasticsearchConfiguration,
              Map<String, dynamic>>(
          elasticsearchConfigurationValue, (value) => value.toMap());
    }
    final extendedS3ConfigurationValue = extendedS3Configuration;
    if (extendedS3ConfigurationValue != null) {
      map['extendedS3Configuration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamExtendedS3Configuration,
              Map<String, dynamic>>(
          extendedS3ConfigurationValue, (value) => value.toMap());
    }
    final httpEndpointConfigurationValue = httpEndpointConfiguration;
    if (httpEndpointConfigurationValue != null) {
      map['httpEndpointConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamHttpEndpointConfiguration,
              Map<String, dynamic>>(
          httpEndpointConfigurationValue, (value) => value.toMap());
    }
    final icebergConfigurationValue = icebergConfiguration;
    if (icebergConfigurationValue != null) {
      map['icebergConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamIcebergConfiguration, Map<String, dynamic>>(
          icebergConfigurationValue, (value) => value.toMap());
    }
    final kinesisSourceConfigurationValue = kinesisSourceConfiguration;
    if (kinesisSourceConfigurationValue != null) {
      map['kinesisSourceConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamKinesisSourceConfiguration,
              Map<String, dynamic>>(
          kinesisSourceConfigurationValue, (value) => value.toMap());
    }
    final mskSourceConfigurationValue = mskSourceConfiguration;
    if (mskSourceConfigurationValue != null) {
      map['mskSourceConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamMskSourceConfiguration,
              Map<String, dynamic>>(
          mskSourceConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final opensearchConfigurationValue = opensearchConfiguration;
    if (opensearchConfigurationValue != null) {
      map['opensearchConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamOpensearchConfiguration,
              Map<String, dynamic>>(
          opensearchConfigurationValue, (value) => value.toMap());
    }
    final opensearchserverlessConfigurationValue =
        opensearchserverlessConfiguration;
    if (opensearchserverlessConfigurationValue != null) {
      map['opensearchserverlessConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamOpensearchserverlessConfiguration,
              Map<String, dynamic>>(
          opensearchserverlessConfigurationValue, (value) => value.toMap());
    }
    final redshiftConfigurationValue = redshiftConfiguration;
    if (redshiftConfigurationValue != null) {
      map['redshiftConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamRedshiftConfiguration,
              Map<String, dynamic>>(
          redshiftConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamServerSideEncryption, Map<String, dynamic>>(
          serverSideEncryptionValue, (value) => value.toMap());
    }
    final snowflakeConfigurationValue = snowflakeConfiguration;
    if (snowflakeConfigurationValue != null) {
      map['snowflakeConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamSnowflakeConfiguration,
              Map<String, dynamic>>(
          snowflakeConfigurationValue, (value) => value.toMap());
    }
    final splunkConfigurationValue = splunkConfiguration;
    if (splunkConfigurationValue != null) {
      map['splunkConfiguration'] = Input.mapOptionalInputValue<
              FirehoseDeliveryStreamSplunkConfiguration, Map<String, dynamic>>(
          splunkConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamArgs.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      destination: Input.asInput<String>(map['destination']),
      destinationId: Input.asOptionalInput<String>(map['destinationId']),
      elasticsearchConfiguration: Input.asOptionalInput<
              FirehoseDeliveryStreamElasticsearchConfiguration>(
          map['elasticsearchConfiguration']),
      extendedS3Configuration:
          Input.asOptionalInput<FirehoseDeliveryStreamExtendedS3Configuration>(
              map['extendedS3Configuration']),
      httpEndpointConfiguration: Input.asOptionalInput<
              FirehoseDeliveryStreamHttpEndpointConfiguration>(
          map['httpEndpointConfiguration']),
      icebergConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamIcebergConfiguration>(
              map['icebergConfiguration']),
      kinesisSourceConfiguration: Input.asOptionalInput<
              FirehoseDeliveryStreamKinesisSourceConfiguration>(
          map['kinesisSourceConfiguration']),
      mskSourceConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamMskSourceConfiguration>(
              map['mskSourceConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      opensearchConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamOpensearchConfiguration>(
              map['opensearchConfiguration']),
      opensearchserverlessConfiguration: Input.asOptionalInput<
              FirehoseDeliveryStreamOpensearchserverlessConfiguration>(
          map['opensearchserverlessConfiguration']),
      redshiftConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamRedshiftConfiguration>(
              map['redshiftConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      serverSideEncryption:
          Input.asOptionalInput<FirehoseDeliveryStreamServerSideEncryption>(
              map['serverSideEncryption']),
      snowflakeConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamSnowflakeConfiguration>(
              map['snowflakeConfiguration']),
      splunkConfiguration:
          Input.asOptionalInput<FirehoseDeliveryStreamSplunkConfiguration>(
              map['splunkConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}

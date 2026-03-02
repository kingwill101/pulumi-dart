// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_elasticsearch_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration.dart';
import 'firehose_delivery_stream_iceberg_configuration.dart';
import 'firehose_delivery_stream_kinesis_source_configuration.dart';
import 'firehose_delivery_stream_msk_source_configuration.dart';
import 'firehose_delivery_stream_opensearch_configuration.dart';
import 'firehose_delivery_stream_opensearchserverless_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration.dart';
import 'firehose_delivery_stream_server_side_encryption.dart';
import 'firehose_delivery_stream_snowflake_configuration.dart';
import 'firehose_delivery_stream_splunk_configuration.dart';

/// {@template pulumi_kinesis_firehose_delivery_stream_firehose_delivery_stream_args_doc}
/// The set of arguments for FirehoseDeliveryStream.
/// {@endtemplate}
/// {@macro pulumi_kinesis_firehose_delivery_stream_firehose_delivery_stream_args_doc}
class FirehoseDeliveryStreamArgs {
  /// The Amazon Resource Name (ARN) specifying the Stream
  final pulumi.Input<String>? arn;
  /// This is the destination to where the data is delivered. The only options are `s3` (Deprecated, use `extended_s3` instead), `extended_s3`, `redshift`, `elasticsearch`, `splunk`, `http_endpoint`, `opensearch`, `opensearchserverless` and `snowflake`.
  final pulumi.Input<String> destination;
  final pulumi.Input<String>? destinationId;
  /// Configuration options when `destination` is `elasticsearch`. See `elasticsearch_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfiguration>? elasticsearchConfiguration;
  /// Enhanced configuration options for the s3 destination. See `extended_s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3Configuration>? extendedS3Configuration;
  /// Configuration options when `destination` is `http_endpoint`. Requires the user to also specify an `s3_configuration` block.  See `http_endpoint_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfiguration>? httpEndpointConfiguration;
  /// Configuration options when `destination` is `iceberg`. See `iceberg_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamIcebergConfiguration>? icebergConfiguration;
  /// The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See `kinesis_source_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamKinesisSourceConfiguration>? kinesisSourceConfiguration;
  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See `msk_source_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamMskSourceConfiguration>? mskSourceConfiguration;
  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  final pulumi.Input<String>? name;
  /// Configuration options when `destination` is `opensearch`. See `opensearch_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfiguration>? opensearchConfiguration;
  /// Configuration options when `destination` is `opensearchserverless`. See `opensearchserverless_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchserverlessConfiguration>? opensearchserverlessConfiguration;
  /// Configuration options when `destination` is `redshift`. Requires the user to also specify an `s3_configuration` block. See `redshift_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamRedshiftConfiguration>? redshiftConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Encrypt at rest options. See `server_side_encryption` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamServerSideEncryption>? serverSideEncryption;
  /// Configuration options when `destination` is `snowflake`. See `snowflake_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSnowflakeConfiguration>? snowflakeConfiguration;
  /// Configuration options when `destination` is `splunk`. See `splunk_configuration` block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfiguration>? splunkConfiguration;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? versionId;

  /// Creates a new [FirehoseDeliveryStreamArgs].
  /// [arn] The Amazon Resource Name (ARN) specifying the Stream
  /// [destination] This is the destination to where the data is delivered. The only options are `s3` (Deprecated, use `extended_s3` instead), `extended_s3`, `redshift`, `elasticsearch`, `splunk`, `http_endpoint`, `opensearch`, `opensearchserverless` and `snowflake`.
  /// [destinationId] Optional.
  /// [elasticsearchConfiguration] Configuration options when `destination` is `elasticsearch`. See `elasticsearch_configuration` block below for details.
  /// [extendedS3Configuration] Enhanced configuration options for the s3 destination. See `extended_s3_configuration` block below for details.
  /// [httpEndpointConfiguration] Configuration options when `destination` is `http_endpoint`. Requires the user to also specify an `s3_configuration` block.  See `http_endpoint_configuration` block below for details.
  /// [icebergConfiguration] Configuration options when `destination` is `iceberg`. See `iceberg_configuration` block below for details.
  /// [kinesisSourceConfiguration] The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See `kinesis_source_configuration` block below for details.
  /// [mskSourceConfiguration] The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See `msk_source_configuration` block below for details.
  /// [name] A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  /// [opensearchConfiguration] Configuration options when `destination` is `opensearch`. See `opensearch_configuration` block below for details.
  /// [opensearchserverlessConfiguration] Configuration options when `destination` is `opensearchserverless`. See `opensearchserverless_configuration` block below for details.
  /// [redshiftConfiguration] Configuration options when `destination` is `redshift`. Requires the user to also specify an `s3_configuration` block. See `redshift_configuration` block below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryption] Encrypt at rest options. See `server_side_encryption` block below for details.
  /// [snowflakeConfiguration] Configuration options when `destination` is `snowflake`. See `snowflake_configuration` block below for details.
  /// [splunkConfiguration] Configuration options when `destination` is `splunk`. See `splunk_configuration` block below for details.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [versionId] Optional.
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
    return <String, dynamic>{
      'arn': ?arn,
      'destination': destination,
      'destinationId': ?destinationId,
      'elasticsearchConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamElasticsearchConfiguration, Map<String, dynamic>>(elasticsearchConfiguration, (value) => value.toMap()),
      'extendedS3Configuration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3Configuration, Map<String, dynamic>>(extendedS3Configuration, (value) => value.toMap()),
      'httpEndpointConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamHttpEndpointConfiguration, Map<String, dynamic>>(httpEndpointConfiguration, (value) => value.toMap()),
      'icebergConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamIcebergConfiguration, Map<String, dynamic>>(icebergConfiguration, (value) => value.toMap()),
      'kinesisSourceConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamKinesisSourceConfiguration, Map<String, dynamic>>(kinesisSourceConfiguration, (value) => value.toMap()),
      'mskSourceConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamMskSourceConfiguration, Map<String, dynamic>>(mskSourceConfiguration, (value) => value.toMap()),
      'name': ?name,
      'opensearchConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchConfiguration, Map<String, dynamic>>(opensearchConfiguration, (value) => value.toMap()),
      'opensearchserverlessConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchserverlessConfiguration, Map<String, dynamic>>(opensearchserverlessConfiguration, (value) => value.toMap()),
      'redshiftConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamRedshiftConfiguration, Map<String, dynamic>>(redshiftConfiguration, (value) => value.toMap()),
      'region': ?region,
      'serverSideEncryption': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamServerSideEncryption, Map<String, dynamic>>(serverSideEncryption, (value) => value.toMap()),
      'snowflakeConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSnowflakeConfiguration, Map<String, dynamic>>(snowflakeConfiguration, (value) => value.toMap()),
      'splunkConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSplunkConfiguration, Map<String, dynamic>>(splunkConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'versionId': ?versionId,
    };
  }

  factory FirehoseDeliveryStreamArgs.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamArgs(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      destination: (map['destination'] as String).input(),
      destinationId: map['destinationId'] == null ? null : ((map['destinationId'] as String).input()).input(),
      elasticsearchConfiguration: map['elasticsearchConfiguration'] == null ? null : ((FirehoseDeliveryStreamElasticsearchConfiguration.fromMap((map['elasticsearchConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      extendedS3Configuration: map['extendedS3Configuration'] == null ? null : ((FirehoseDeliveryStreamExtendedS3Configuration.fromMap((map['extendedS3Configuration']! as Map).cast<String, dynamic>())).input()).input(),
      httpEndpointConfiguration: map['httpEndpointConfiguration'] == null ? null : ((FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap((map['httpEndpointConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      icebergConfiguration: map['icebergConfiguration'] == null ? null : ((FirehoseDeliveryStreamIcebergConfiguration.fromMap((map['icebergConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      kinesisSourceConfiguration: map['kinesisSourceConfiguration'] == null ? null : ((FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap((map['kinesisSourceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      mskSourceConfiguration: map['mskSourceConfiguration'] == null ? null : ((FirehoseDeliveryStreamMskSourceConfiguration.fromMap((map['mskSourceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      opensearchConfiguration: map['opensearchConfiguration'] == null ? null : ((FirehoseDeliveryStreamOpensearchConfiguration.fromMap((map['opensearchConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      opensearchserverlessConfiguration: map['opensearchserverlessConfiguration'] == null ? null : ((FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap((map['opensearchserverlessConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      redshiftConfiguration: map['redshiftConfiguration'] == null ? null : ((FirehoseDeliveryStreamRedshiftConfiguration.fromMap((map['redshiftConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : ((FirehoseDeliveryStreamServerSideEncryption.fromMap((map['serverSideEncryption']! as Map).cast<String, dynamic>())).input()).input(),
      snowflakeConfiguration: map['snowflakeConfiguration'] == null ? null : ((FirehoseDeliveryStreamSnowflakeConfiguration.fromMap((map['snowflakeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      splunkConfiguration: map['splunkConfiguration'] == null ? null : ((FirehoseDeliveryStreamSplunkConfiguration.fromMap((map['splunkConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      versionId: map['versionId'] == null ? null : ((map['versionId'] as String).input()).input(),
    );
  }
}


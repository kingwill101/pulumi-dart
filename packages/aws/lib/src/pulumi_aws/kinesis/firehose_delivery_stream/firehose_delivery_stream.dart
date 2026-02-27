import 'package:pulumi/pulumi.dart' as pulumi;
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
import 'firehose_delivery_stream_args.dart';

/// Provides a Kinesis Firehose Delivery Stream resource. Amazon Kinesis Firehose is a fully managed, elastic service to easily deliver real-time data streams to destinations such as Amazon S3 , Amazon Redshift and Snowflake.
///
/// For more details, see the [Amazon Kinesis Firehose Documentation](https://aws.amazon.com/documentation/firehose/).
///
/// ## Example Usage
///
/// ### Extended S3 Destination
///
///
///
/// ### Extended S3 Destination with dynamic partitioning
///
/// These examples use built-in Firehose functionality, rather than requiring a lambda.
///
///
///
/// Multiple Dynamic Partitioning Keys (maximum of 50) can be added by comma separating the `parameter_value`.
///
/// The following example adds the Dynamic Partitioning Keys: `store_id` and `customer_id` to the S3 prefix.
///
///
///
/// ### Redshift Destination
///
///
///
/// ### Elasticsearch Destination
///
///
///
/// ### Elasticsearch Destination With VPC
///
///
///
/// ### OpenSearch Destination
///
///
///
/// ### OpenSearch Destination With VPC
///
///
///
/// ### OpenSearch Serverless Destination
///
///
///
/// ### Iceberg Destination
///
///
///
/// ### Splunk Destination
///
///
///
/// ### HTTP Endpoint (e.g., New Relic) Destination
///
///
///
/// ### Snowflake Destination
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Firehose Delivery streams using the stream ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream foo arn:aws:firehose:us-east-1:XXX:deliverystream/example
/// ```
///
/// Note: Import does not work for stream destination `s3`. Consider using `extended_s3` since `s3` destination is deprecated.
class FirehoseDeliveryStream extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream
  late final pulumi.Output<String> arn;

  /// This is the destination to where the data is delivered. The only options are `s3` (Deprecated, use `extended_s3` instead), `extended_s3`, `redshift`, `elasticsearch`, `splunk`, `http_endpoint`, `opensearch`, `opensearchserverless` and `snowflake`.
  late final pulumi.Output<String> destination;
  late final pulumi.Output<String> destinationId;

  /// Configuration options when `destination` is `elasticsearch`. See `elasticsearch_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamElasticsearchConfiguration?>
      elasticsearchConfiguration;

  /// Enhanced configuration options for the s3 destination. See `extended_s3_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamExtendedS3Configuration?>
      extendedS3Configuration;

  /// Configuration options when `destination` is `http_endpoint`. Requires the user to also specify an `s3_configuration` block.  See `http_endpoint_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamHttpEndpointConfiguration?>
      httpEndpointConfiguration;

  /// Configuration options when `destination` is `iceberg`. See `iceberg_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamIcebergConfiguration?>
      icebergConfiguration;

  /// The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See `kinesis_source_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamKinesisSourceConfiguration?>
      kinesisSourceConfiguration;

  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See `msk_source_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamMskSourceConfiguration?>
      mskSourceConfiguration;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  late final pulumi.Output<String> name;

  /// Configuration options when `destination` is `opensearch`. See `opensearch_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamOpensearchConfiguration?>
      opensearchConfiguration;

  /// Configuration options when `destination` is `opensearchserverless`. See `opensearchserverless_configuration` block below for details.
  late final pulumi
      .Output<FirehoseDeliveryStreamOpensearchserverlessConfiguration?>
      opensearchserverlessConfiguration;

  /// Configuration options when `destination` is `redshift`. Requires the user to also specify an `s3_configuration` block. See `redshift_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamRedshiftConfiguration?>
      redshiftConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Encrypt at rest options. See `server_side_encryption` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamServerSideEncryption?>
      serverSideEncryption;

  /// Configuration options when `destination` is `snowflake`. See `snowflake_configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamSnowflakeConfiguration?>
      snowflakeConfiguration;

  /// Configuration options when `destination` is `splunk`. See `splunk_configuration` block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  late final pulumi.Output<FirehoseDeliveryStreamSplunkConfiguration?>
      splunkConfiguration;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> versionId;

  FirehoseDeliveryStream(
    String name, {
    FirehoseDeliveryStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<String>('destination');
    this.destinationId = registerOutput<String>('destinationId');
    this.elasticsearchConfiguration =
        registerOutput<FirehoseDeliveryStreamElasticsearchConfiguration?>(
            'elasticsearchConfiguration');
    this.extendedS3Configuration =
        registerOutput<FirehoseDeliveryStreamExtendedS3Configuration?>(
            'extendedS3Configuration');
    this.httpEndpointConfiguration =
        registerOutput<FirehoseDeliveryStreamHttpEndpointConfiguration?>(
            'httpEndpointConfiguration');
    this.icebergConfiguration =
        registerOutput<FirehoseDeliveryStreamIcebergConfiguration?>(
            'icebergConfiguration');
    this.kinesisSourceConfiguration =
        registerOutput<FirehoseDeliveryStreamKinesisSourceConfiguration?>(
            'kinesisSourceConfiguration');
    this.mskSourceConfiguration =
        registerOutput<FirehoseDeliveryStreamMskSourceConfiguration?>(
            'mskSourceConfiguration');
    this.name = registerOutput<String>('name');
    this.opensearchConfiguration =
        registerOutput<FirehoseDeliveryStreamOpensearchConfiguration?>(
            'opensearchConfiguration');
    this.opensearchserverlessConfiguration = registerOutput<
            FirehoseDeliveryStreamOpensearchserverlessConfiguration?>(
        'opensearchserverlessConfiguration');
    this.redshiftConfiguration =
        registerOutput<FirehoseDeliveryStreamRedshiftConfiguration?>(
            'redshiftConfiguration');
    this.region = registerOutput<String>('region');
    this.serverSideEncryption =
        registerOutput<FirehoseDeliveryStreamServerSideEncryption?>(
            'serverSideEncryption');
    this.snowflakeConfiguration =
        registerOutput<FirehoseDeliveryStreamSnowflakeConfiguration?>(
            'snowflakeConfiguration');
    this.splunkConfiguration =
        registerOutput<FirehoseDeliveryStreamSplunkConfiguration?>(
            'splunkConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<String>('versionId');
  }
}

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

  /// This is the destination to where the data is delivered. The only options are <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> (Deprecated, use <span pulumi-lang-nodejs="`extendedS3`" pulumi-lang-dotnet="`ExtendedS3`" pulumi-lang-go="`extendedS3`" pulumi-lang-python="`extended_s3`" pulumi-lang-yaml="`extendedS3`" pulumi-lang-java="`extendedS3`">`extended_s3`</span> instead), <span pulumi-lang-nodejs="`extendedS3`" pulumi-lang-dotnet="`ExtendedS3`" pulumi-lang-go="`extendedS3`" pulumi-lang-python="`extended_s3`" pulumi-lang-yaml="`extendedS3`" pulumi-lang-java="`extendedS3`">`extended_s3`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`splunk`" pulumi-lang-dotnet="`Splunk`" pulumi-lang-go="`splunk`" pulumi-lang-python="`splunk`" pulumi-lang-yaml="`splunk`" pulumi-lang-java="`splunk`">`splunk`</span>, <span pulumi-lang-nodejs="`httpEndpoint`" pulumi-lang-dotnet="`HttpEndpoint`" pulumi-lang-go="`httpEndpoint`" pulumi-lang-python="`http_endpoint`" pulumi-lang-yaml="`httpEndpoint`" pulumi-lang-java="`httpEndpoint`">`http_endpoint`</span>, <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>, <span pulumi-lang-nodejs="`opensearchserverless`" pulumi-lang-dotnet="`Opensearchserverless`" pulumi-lang-go="`opensearchserverless`" pulumi-lang-python="`opensearchserverless`" pulumi-lang-yaml="`opensearchserverless`" pulumi-lang-java="`opensearchserverless`">`opensearchserverless`</span> and <span pulumi-lang-nodejs="`snowflake`" pulumi-lang-dotnet="`Snowflake`" pulumi-lang-go="`snowflake`" pulumi-lang-python="`snowflake`" pulumi-lang-yaml="`snowflake`" pulumi-lang-java="`snowflake`">`snowflake`</span>.
  final Input<String> destination;
  final Input<String>? destinationId;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>. See <span pulumi-lang-nodejs="`elasticsearchConfiguration`" pulumi-lang-dotnet="`ElasticsearchConfiguration`" pulumi-lang-go="`elasticsearchConfiguration`" pulumi-lang-python="`elasticsearch_configuration`" pulumi-lang-yaml="`elasticsearchConfiguration`" pulumi-lang-java="`elasticsearchConfiguration`">`elasticsearch_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamElasticsearchConfiguration>?
      elasticsearchConfiguration;

  /// Enhanced configuration options for the s3 destination. See <span pulumi-lang-nodejs="`extendedS3Configuration`" pulumi-lang-dotnet="`ExtendedS3Configuration`" pulumi-lang-go="`extendedS3Configuration`" pulumi-lang-python="`extended_s3_configuration`" pulumi-lang-yaml="`extendedS3Configuration`" pulumi-lang-java="`extendedS3Configuration`">`extended_s3_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamExtendedS3Configuration>?
      extendedS3Configuration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`httpEndpoint`" pulumi-lang-dotnet="`HttpEndpoint`" pulumi-lang-go="`httpEndpoint`" pulumi-lang-python="`http_endpoint`" pulumi-lang-yaml="`httpEndpoint`" pulumi-lang-java="`httpEndpoint`">`http_endpoint`</span>. Requires the user to also specify an <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block.  See <span pulumi-lang-nodejs="`httpEndpointConfiguration`" pulumi-lang-dotnet="`HttpEndpointConfiguration`" pulumi-lang-go="`httpEndpointConfiguration`" pulumi-lang-python="`http_endpoint_configuration`" pulumi-lang-yaml="`httpEndpointConfiguration`" pulumi-lang-java="`httpEndpointConfiguration`">`http_endpoint_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamHttpEndpointConfiguration>?
      httpEndpointConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`iceberg`" pulumi-lang-dotnet="`Iceberg`" pulumi-lang-go="`iceberg`" pulumi-lang-python="`iceberg`" pulumi-lang-yaml="`iceberg`" pulumi-lang-java="`iceberg`">`iceberg`</span>. See <span pulumi-lang-nodejs="`icebergConfiguration`" pulumi-lang-dotnet="`IcebergConfiguration`" pulumi-lang-go="`icebergConfiguration`" pulumi-lang-python="`iceberg_configuration`" pulumi-lang-yaml="`icebergConfiguration`" pulumi-lang-java="`icebergConfiguration`">`iceberg_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamIcebergConfiguration>? icebergConfiguration;

  /// The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See <span pulumi-lang-nodejs="`kinesisSourceConfiguration`" pulumi-lang-dotnet="`KinesisSourceConfiguration`" pulumi-lang-go="`kinesisSourceConfiguration`" pulumi-lang-python="`kinesis_source_configuration`" pulumi-lang-yaml="`kinesisSourceConfiguration`" pulumi-lang-java="`kinesisSourceConfiguration`">`kinesis_source_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamKinesisSourceConfiguration>?
      kinesisSourceConfiguration;

  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See <span pulumi-lang-nodejs="`mskSourceConfiguration`" pulumi-lang-dotnet="`MskSourceConfiguration`" pulumi-lang-go="`mskSourceConfiguration`" pulumi-lang-python="`msk_source_configuration`" pulumi-lang-yaml="`mskSourceConfiguration`" pulumi-lang-java="`mskSourceConfiguration`">`msk_source_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamMskSourceConfiguration>?
      mskSourceConfiguration;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  final Input<String>? name;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>. See <span pulumi-lang-nodejs="`opensearchConfiguration`" pulumi-lang-dotnet="`OpensearchConfiguration`" pulumi-lang-go="`opensearchConfiguration`" pulumi-lang-python="`opensearch_configuration`" pulumi-lang-yaml="`opensearchConfiguration`" pulumi-lang-java="`opensearchConfiguration`">`opensearch_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamOpensearchConfiguration>?
      opensearchConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`opensearchserverless`" pulumi-lang-dotnet="`Opensearchserverless`" pulumi-lang-go="`opensearchserverless`" pulumi-lang-python="`opensearchserverless`" pulumi-lang-yaml="`opensearchserverless`" pulumi-lang-java="`opensearchserverless`">`opensearchserverless`</span>. See <span pulumi-lang-nodejs="`opensearchserverlessConfiguration`" pulumi-lang-dotnet="`OpensearchserverlessConfiguration`" pulumi-lang-go="`opensearchserverlessConfiguration`" pulumi-lang-python="`opensearchserverless_configuration`" pulumi-lang-yaml="`opensearchserverlessConfiguration`" pulumi-lang-java="`opensearchserverlessConfiguration`">`opensearchserverless_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamOpensearchserverlessConfiguration>?
      opensearchserverlessConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>. Requires the user to also specify an <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block. See <span pulumi-lang-nodejs="`redshiftConfiguration`" pulumi-lang-dotnet="`RedshiftConfiguration`" pulumi-lang-go="`redshiftConfiguration`" pulumi-lang-python="`redshift_configuration`" pulumi-lang-yaml="`redshiftConfiguration`" pulumi-lang-java="`redshiftConfiguration`">`redshift_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamRedshiftConfiguration>?
      redshiftConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Encrypt at rest options. See <span pulumi-lang-nodejs="`serverSideEncryption`" pulumi-lang-dotnet="`ServerSideEncryption`" pulumi-lang-go="`serverSideEncryption`" pulumi-lang-python="`server_side_encryption`" pulumi-lang-yaml="`serverSideEncryption`" pulumi-lang-java="`serverSideEncryption`">`server_side_encryption`</span> block below for details.
  final Input<FirehoseDeliveryStreamServerSideEncryption>? serverSideEncryption;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`snowflake`" pulumi-lang-dotnet="`Snowflake`" pulumi-lang-go="`snowflake`" pulumi-lang-python="`snowflake`" pulumi-lang-yaml="`snowflake`" pulumi-lang-java="`snowflake`">`snowflake`</span>. See <span pulumi-lang-nodejs="`snowflakeConfiguration`" pulumi-lang-dotnet="`SnowflakeConfiguration`" pulumi-lang-go="`snowflakeConfiguration`" pulumi-lang-python="`snowflake_configuration`" pulumi-lang-yaml="`snowflakeConfiguration`" pulumi-lang-java="`snowflakeConfiguration`">`snowflake_configuration`</span> block below for details.
  final Input<FirehoseDeliveryStreamSnowflakeConfiguration>?
      snowflakeConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`splunk`" pulumi-lang-dotnet="`Splunk`" pulumi-lang-go="`splunk`" pulumi-lang-python="`splunk`" pulumi-lang-yaml="`splunk`" pulumi-lang-java="`splunk`">`splunk`</span>. See <span pulumi-lang-nodejs="`splunkConfiguration`" pulumi-lang-dotnet="`SplunkConfiguration`" pulumi-lang-go="`splunkConfiguration`" pulumi-lang-python="`splunk_configuration`" pulumi-lang-yaml="`splunkConfiguration`" pulumi-lang-java="`splunkConfiguration`">`splunk_configuration`</span> block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  final Input<FirehoseDeliveryStreamSplunkConfiguration>? splunkConfiguration;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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

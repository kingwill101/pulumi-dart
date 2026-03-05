// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_http_endpoint_configuration_request_configuration_common_attribute.dart';

class FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration {
  /// Describes the metadata sent to the HTTP endpoint destination. See `common_attributes` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute>>? commonAttributes;
  /// Kinesis Data Firehose uses the content encoding to compress the body of a request before sending the request to the destination. Valid values are `NONE` and `GZIP`.  Default value is `NONE`.
  final pulumi.Input<String>? contentEncoding;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration].
  /// [commonAttributes] Describes the metadata sent to the HTTP endpoint destination. See `common_attributes` block below for details.
  /// [contentEncoding] Kinesis Data Firehose uses the content encoding to compress the body of a request before sending the request to the destination. Valid values are `NONE` and `GZIP`.  Default value is `NONE`.
  FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration({
    this.commonAttributes,
    this.contentEncoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonAttributes': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute>, List<Map<String, dynamic>>>(commonAttributes, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentEncoding': ?contentEncoding,
    };
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration(
      commonAttributes: (() { final guardedValue = map['commonAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute>(guardedValue, (value) => FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


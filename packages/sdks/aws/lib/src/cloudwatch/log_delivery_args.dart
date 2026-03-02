// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_s3_delivery_configuration.dart';

/// {@template pulumi_cloudwatch_log_delivery_log_delivery_args_doc}
/// The set of arguments for LogDelivery.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_delivery_log_delivery_args_doc}
class LogDeliveryArgs {
  /// The ARN of the delivery destination to use for this delivery.
  final pulumi.Input<String> deliveryDestinationArn;
  /// The name of the delivery source to use for this delivery.
  final pulumi.Input<String> deliverySourceName;
  /// The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  final pulumi.Input<String>? fieldDelimiter;
  /// The list of record fields to be delivered to the destination, in order.
  final pulumi.Input<List<String>>? recordFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  final pulumi.Input<List<LogDeliveryS3DeliveryConfiguration>>? s3DeliveryConfigurations;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LogDeliveryArgs].
  /// [deliveryDestinationArn] The ARN of the delivery destination to use for this delivery.
  /// [deliverySourceName] The name of the delivery source to use for this delivery.
  /// [fieldDelimiter] The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  /// [recordFields] The list of record fields to be delivered to the destination, in order.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3DeliveryConfigurations] Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LogDeliveryArgs({
    required this.deliveryDestinationArn,
    required this.deliverySourceName,
    this.fieldDelimiter,
    this.recordFields,
    this.region,
    this.s3DeliveryConfigurations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDestinationArn': deliveryDestinationArn,
      'deliverySourceName': deliverySourceName,
      'fieldDelimiter': ?fieldDelimiter,
      'recordFields': ?recordFields,
      'region': ?region,
      's3DeliveryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LogDeliveryS3DeliveryConfiguration>, List<Map<String, dynamic>>>(s3DeliveryConfigurations, (value) => pulumi.Input.encodeList<LogDeliveryS3DeliveryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory LogDeliveryArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryArgs(
      deliveryDestinationArn: (map['deliveryDestinationArn'] as String).input(),
      deliverySourceName: (map['deliverySourceName'] as String).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : (map['fieldDelimiter'] as String).input(),
      recordFields: map['recordFields'] == null ? null : ((map['recordFields'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3DeliveryConfigurations: map['s3DeliveryConfigurations'] == null ? null : (pulumi.Input.decodeList<LogDeliveryS3DeliveryConfiguration>(map['s3DeliveryConfigurations'], (value) => LogDeliveryS3DeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


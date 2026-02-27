// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_delivery_s3_delivery_configuration/log_delivery_s3_delivery_configuration.dart';

/// The set of arguments for LogDelivery.
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
  final pulumi.Input<List<LogDeliveryS3DeliveryConfiguration>>?
      s3DeliveryConfigurations;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    map['deliveryDestinationArn'] = deliveryDestinationArn;
    map['deliverySourceName'] = deliverySourceName;
    final fieldDelimiterValue = fieldDelimiter;
    if (fieldDelimiterValue != null) {
      map['fieldDelimiter'] = fieldDelimiterValue;
    }
    final recordFieldsValue = recordFields;
    if (recordFieldsValue != null) {
      map['recordFields'] = recordFieldsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3DeliveryConfigurationsValue = s3DeliveryConfigurations;
    if (s3DeliveryConfigurationsValue != null) {
      map['s3DeliveryConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<LogDeliveryS3DeliveryConfiguration>,
              List<Map<String, dynamic>>>(
          s3DeliveryConfigurationsValue,
          (value) => pulumi.Input.encodeList<LogDeliveryS3DeliveryConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogDeliveryArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryArgs(
      deliveryDestinationArn:
          pulumi.Input.asInput<String>(map['deliveryDestinationArn']),
      deliverySourceName:
          pulumi.Input.asInput<String>(map['deliverySourceName']),
      fieldDelimiter:
          pulumi.Input.asOptionalInput<String>(map['fieldDelimiter']),
      recordFields:
          pulumi.Input.asOptionalInput<List<String>>(map['recordFields']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3DeliveryConfigurations: pulumi.Input.asOptionalInput<
              List<LogDeliveryS3DeliveryConfiguration>>(
          map['s3DeliveryConfigurations']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

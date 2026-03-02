// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_s3_delivery_configuration.dart';

/// Input properties used for looking up and filtering LogDelivery resources.
class LogDeliveryState {
  /// The Amazon Resource Name (ARN) of the delivery.
  final pulumi.Input<String>? arn;
  /// The ARN of the delivery destination to use for this delivery.
  final pulumi.Input<String>? deliveryDestinationArn;
  /// The name of the delivery source to use for this delivery.
  final pulumi.Input<String>? deliverySourceName;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LogDeliveryState].
  /// [arn] The Amazon Resource Name (ARN) of the delivery.
  /// [deliveryDestinationArn] The ARN of the delivery destination to use for this delivery.
  /// [deliverySourceName] The name of the delivery source to use for this delivery.
  /// [fieldDelimiter] The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  /// [recordFields] The list of record fields to be delivered to the destination, in order.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3DeliveryConfigurations] Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LogDeliveryState({
    this.arn,
    this.deliveryDestinationArn,
    this.deliverySourceName,
    this.fieldDelimiter,
    this.recordFields,
    this.region,
    this.s3DeliveryConfigurations,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deliveryDestinationArn': ?deliveryDestinationArn,
      'deliverySourceName': ?deliverySourceName,
      'fieldDelimiter': ?fieldDelimiter,
      'recordFields': ?recordFields,
      'region': ?region,
      's3DeliveryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LogDeliveryS3DeliveryConfiguration>, List<Map<String, dynamic>>>(s3DeliveryConfigurations, (value) => pulumi.Input.encodeList<LogDeliveryS3DeliveryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LogDeliveryState.fromMap(Map<String, dynamic> map) {
    return LogDeliveryState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      deliveryDestinationArn: map['deliveryDestinationArn'] == null ? null : ((map['deliveryDestinationArn'] as String).input()).input(),
      deliverySourceName: map['deliverySourceName'] == null ? null : ((map['deliverySourceName'] as String).input()).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : ((map['fieldDelimiter'] as String).input()).input(),
      recordFields: map['recordFields'] == null ? null : (((map['recordFields'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3DeliveryConfigurations: map['s3DeliveryConfigurations'] == null ? null : ((pulumi.Input.decodeList<LogDeliveryS3DeliveryConfiguration>(map['s3DeliveryConfigurations']!, (value) => LogDeliveryS3DeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}


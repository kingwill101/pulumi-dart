// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_s3_delivery_configuration.dart';

/// Input properties used for looking up and filtering LogDelivery resources.
class LogDeliveryState {
  /// ARN of the delivery.
  final pulumi.Input<String?>? arn;
  /// The ARN of the delivery destination to use for this delivery.
  final pulumi.Input<String?>? deliveryDestinationArn;
  /// The name of the delivery source to use for this delivery.
  final pulumi.Input<String?>? deliverySourceName;
  /// The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  final pulumi.Input<String?>? fieldDelimiter;
  /// The list of record fields to be delivered to the destination, in order. The valid field names vary by the `logType` of the delivery source. For a CloudFront `ACCESS_LOGS` source, see [Configure standard logging (v2)](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#standard-logging-real-time-log-selection) for the supported values.
  final pulumi.Input<List<String>?>? recordFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  final pulumi.Input<List<LogDeliveryS3DeliveryConfiguration>?>? s3DeliveryConfigurations;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [LogDeliveryState].
  /// [arn] ARN of the delivery.
  /// [deliveryDestinationArn] The ARN of the delivery destination to use for this delivery.
  /// [deliverySourceName] The name of the delivery source to use for this delivery.
  /// [fieldDelimiter] The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  /// [recordFields] The list of record fields to be delivered to the destination, in order. The valid field names vary by the `logType` of the delivery source. For a CloudFront `ACCESS_LOGS` source, see [Configure standard logging (v2)](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#standard-logging-real-time-log-selection) for the supported values.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3DeliveryConfigurations] Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const LogDeliveryState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryDestinationArn: (() { final guardedValue = map['deliveryDestinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliverySourceName: (() { final guardedValue = map['deliverySourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordFields: (() { final guardedValue = map['recordFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DeliveryConfigurations: (() { final guardedValue = map['s3DeliveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogDeliveryS3DeliveryConfiguration>(guardedValue, (value) => LogDeliveryS3DeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

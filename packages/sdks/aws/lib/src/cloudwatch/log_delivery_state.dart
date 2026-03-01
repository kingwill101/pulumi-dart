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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? deliveryDestinationArn,
    pulumi.Output<String>? deliverySourceName,
    pulumi.Output<String>? fieldDelimiter,
    pulumi.Output<List<String>>? recordFields,
    pulumi.Output<String>? region,
    pulumi.Output<List<LogDeliveryS3DeliveryConfiguration>>? s3DeliveryConfigurations,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deliveryDestinationArn = pulumi.Input.asOptionalInput<String>(deliveryDestinationArn),
      deliverySourceName = pulumi.Input.asOptionalInput<String>(deliverySourceName),
      fieldDelimiter = pulumi.Input.asOptionalInput<String>(fieldDelimiter),
      recordFields = pulumi.Input.asOptionalInput<List<String>>(recordFields),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3DeliveryConfigurations = pulumi.Input.asOptionalInput<List<LogDeliveryS3DeliveryConfiguration>>(s3DeliveryConfigurations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deliveryDestinationArn: map['deliveryDestinationArn'] == null ? null : pulumi.Output.create<String>(map['deliveryDestinationArn'] as String),
      deliverySourceName: map['deliverySourceName'] == null ? null : pulumi.Output.create<String>(map['deliverySourceName'] as String),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : pulumi.Output.create<String>(map['fieldDelimiter'] as String),
      recordFields: map['recordFields'] == null ? null : pulumi.Output.create<List<String>>((map['recordFields'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3DeliveryConfigurations: map['s3DeliveryConfigurations'] == null ? null : pulumi.Output.create<List<LogDeliveryS3DeliveryConfiguration>>(pulumi.Input.decodeList<LogDeliveryS3DeliveryConfiguration>(map['s3DeliveryConfigurations'], (value) => LogDeliveryS3DeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}


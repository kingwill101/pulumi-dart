// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_destination_delivery_destination_configuration.dart';

/// Input properties used for looking up and filtering LogDeliveryDestination resources.
class LogDeliveryDestinationState {
  /// The Amazon Resource Name (ARN) of the delivery destination.
  final pulumi.Input<String>? arn;
  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  final pulumi.Input<LogDeliveryDestinationDeliveryDestinationConfiguration>? deliveryDestinationConfiguration;
  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destination_resource_arn`.
  final pulumi.Input<String>? deliveryDestinationType;
  /// The name for this delivery destination.
  final pulumi.Input<String>? name;
  /// The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  final pulumi.Input<String>? outputFormat;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LogDeliveryDestinationState].
  /// [arn] The Amazon Resource Name (ARN) of the delivery destination.
  /// [deliveryDestinationConfiguration] The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  /// [deliveryDestinationType] The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destination_resource_arn`.
  /// [name] The name for this delivery destination.
  /// [outputFormat] The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LogDeliveryDestinationState({
    this.arn,
    this.deliveryDestinationConfiguration,
    this.deliveryDestinationType,
    this.name,
    this.outputFormat,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deliveryDestinationConfiguration': ?pulumi.Input.mapOptionalInputValue<LogDeliveryDestinationDeliveryDestinationConfiguration, Map<String, dynamic>>(deliveryDestinationConfiguration, (value) => value.toMap()),
      'deliveryDestinationType': ?deliveryDestinationType,
      'name': ?name,
      'outputFormat': ?outputFormat,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LogDeliveryDestinationState.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      deliveryDestinationConfiguration: map['deliveryDestinationConfiguration'] == null ? null : (LogDeliveryDestinationDeliveryDestinationConfiguration.fromMap((map['deliveryDestinationConfiguration'] as Map).cast<String, dynamic>())).input(),
      deliveryDestinationType: map['deliveryDestinationType'] == null ? null : (map['deliveryDestinationType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}


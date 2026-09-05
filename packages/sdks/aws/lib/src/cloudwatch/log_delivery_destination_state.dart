// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_destination_delivery_destination_configuration.dart';

/// Input properties used for looking up and filtering LogDeliveryDestination resources.
class LogDeliveryDestinationState {
  /// ARN of the delivery destination.
  final pulumi.Input<String?>? arn;
  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  final pulumi.Input<LogDeliveryDestinationDeliveryDestinationConfiguration?>? deliveryDestinationConfiguration;
  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destinationResourceArn`.
  final pulumi.Input<String?>? deliveryDestinationType;
  /// The name for this delivery destination.
  final pulumi.Input<String?>? name;
  /// The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  final pulumi.Input<String?>? outputFormat;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [LogDeliveryDestinationState].
  /// [arn] ARN of the delivery destination.
  /// [deliveryDestinationConfiguration] The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  /// [deliveryDestinationType] The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destinationResourceArn`.
  /// [name] The name for this delivery destination.
  /// [outputFormat] The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const LogDeliveryDestinationState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryDestinationConfiguration: (() { final guardedValue = map['deliveryDestinationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogDeliveryDestinationDeliveryDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliveryDestinationType: (() { final guardedValue = map['deliveryDestinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

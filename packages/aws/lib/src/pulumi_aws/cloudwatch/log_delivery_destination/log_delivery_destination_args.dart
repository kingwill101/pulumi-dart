// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_delivery_destination_delivery_destination_configuration/log_delivery_destination_delivery_destination_configuration.dart';

/// The set of arguments for LogDeliveryDestination.
class LogDeliveryDestinationArgs {
  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  final pulumi.Input<LogDeliveryDestinationDeliveryDestinationConfiguration>?
      deliveryDestinationConfiguration;

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

  LogDeliveryDestinationArgs({
    this.deliveryDestinationConfiguration,
    this.deliveryDestinationType,
    this.name,
    this.outputFormat,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryDestinationConfigurationValue =
        deliveryDestinationConfiguration;
    if (deliveryDestinationConfigurationValue != null) {
      map['deliveryDestinationConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  LogDeliveryDestinationDeliveryDestinationConfiguration,
                  Map<String, dynamic>>(
              deliveryDestinationConfigurationValue, (value) => value.toMap());
    }
    final deliveryDestinationTypeValue = deliveryDestinationType;
    if (deliveryDestinationTypeValue != null) {
      map['deliveryDestinationType'] = deliveryDestinationTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogDeliveryDestinationArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationArgs(
      deliveryDestinationConfiguration: pulumi.Input.asOptionalInput<
              LogDeliveryDestinationDeliveryDestinationConfiguration>(
          map['deliveryDestinationConfiguration']),
      deliveryDestinationType:
          pulumi.Input.asOptionalInput<String>(map['deliveryDestinationType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outputFormat: pulumi.Input.asOptionalInput<String>(map['outputFormat']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

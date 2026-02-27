import 'package:pulumi/pulumi.dart';
import '../log_delivery_destination_delivery_destination_configuration/log_delivery_destination_delivery_destination_configuration.dart';
import 'log_delivery_destination_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Destination.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### X-Ray Trace Delivery
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery Destination using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination example example
/// ```
class LogDeliveryDestination extends CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery destination.
  late final Output<String> arn;

  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  late final Output<LogDeliveryDestinationDeliveryDestinationConfiguration?>
      deliveryDestinationConfiguration;

  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destination_resource_arn`.
  late final Output<String> deliveryDestinationType;

  /// The name for this delivery destination.
  late final Output<String> name;

  /// The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  late final Output<String?> outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  LogDeliveryDestination(
    String name, {
    LogDeliveryDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationConfiguration =
        registerOutput<LogDeliveryDestinationDeliveryDestinationConfiguration?>(
            'deliveryDestinationConfiguration');
    this.deliveryDestinationType =
        registerOutput<String>('deliveryDestinationType');
    this.name = registerOutput<String>('name');
    this.outputFormat = registerOutput<String?>('outputFormat');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

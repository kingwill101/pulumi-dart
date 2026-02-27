import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_delivery_s3_delivery_configuration/log_delivery_s3_delivery_configuration.dart';
import 'log_delivery_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery. A delivery is a connection between an `aws.cloudwatch.LogDeliverySource` and an `aws.cloudwatch.LogDeliveryDestination`.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDelivery:LogDelivery example jsoGVi4Zq8VlYp9n
/// ```
class LogDelivery extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery.
  late final pulumi.Output<String> arn;

  /// The ARN of the delivery destination to use for this delivery.
  late final pulumi.Output<String> deliveryDestinationArn;

  /// The name of the delivery source to use for this delivery.
  late final pulumi.Output<String> deliverySourceName;

  /// The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  late final pulumi.Output<String> fieldDelimiter;

  /// The list of record fields to be delivered to the destination, in order.
  late final pulumi.Output<List<String>> recordFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  late final pulumi.Output<List<LogDeliveryS3DeliveryConfiguration>>
      s3DeliveryConfigurations;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  LogDelivery(
    String name, {
    LogDeliveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDelivery:LogDelivery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationArn =
        registerOutput<String>('deliveryDestinationArn');
    this.deliverySourceName = registerOutput<String>('deliverySourceName');
    this.fieldDelimiter = registerOutput<String>('fieldDelimiter');
    this.recordFields = registerOutput<List<String>>('recordFields');
    this.region = registerOutput<String>('region');
    this.s3DeliveryConfigurations =
        registerOutput<List<LogDeliveryS3DeliveryConfiguration>>(
            's3DeliveryConfigurations');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

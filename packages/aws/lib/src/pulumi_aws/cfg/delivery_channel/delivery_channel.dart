import 'package:pulumi/pulumi.dart';
import '../delivery_channel_snapshot_delivery_properties/delivery_channel_snapshot_delivery_properties.dart';
import 'delivery_channel_args.dart';

/// Provides an AWS Config Delivery Channel.
///
/// > **Note:** Delivery Channel requires a Configuration Recorder to be present. Use of `depends_on` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Delivery Channel using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/deliveryChannel:DeliveryChannel foo example
/// ```
class DeliveryChannel extends CustomResource {
  /// The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the S3 bucket used to store the configuration history.
  late final Output<String> s3BucketName;

  /// The prefix for the specified S3 bucket.
  late final Output<String?> s3KeyPrefix;

  /// The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  late final Output<String?> s3KmsKeyArn;

  /// Options for how AWS Config delivers configuration snapshots. See below
  late final Output<DeliveryChannelSnapshotDeliveryProperties?>
      snapshotDeliveryProperties;

  /// The ARN of the SNS topic that AWS Config delivers notifications to.
  late final Output<String?> snsTopicArn;

  DeliveryChannel(
    String name, {
    DeliveryChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/deliveryChannel:DeliveryChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.s3BucketName = registerOutput<String>('s3BucketName');
    this.s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
    this.s3KmsKeyArn = registerOutput<String?>('s3KmsKeyArn');
    this.snapshotDeliveryProperties =
        registerOutput<DeliveryChannelSnapshotDeliveryProperties?>(
            'snapshotDeliveryProperties');
    this.snsTopicArn = registerOutput<String?>('snsTopicArn');
  }
}

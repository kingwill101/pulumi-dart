import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_channel_filters/notification_channel_filters.dart';
import '../notification_channel_sns/notification_channel_sns.dart';
import 'notification_channel_args.dart';

/// Resource for managing an AWS DevOps Guru Notification Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filters
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Notification Channel using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/notificationChannel:NotificationChannel example id-12345678
/// ```
class NotificationChannel extends pulumi.CustomResource {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` argument reference below.
  late final pulumi.Output<NotificationChannelFilters?> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// SNS noficiation channel configurations. See the `sns` argument reference below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<NotificationChannelSns> sns;

  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/notificationChannel:NotificationChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.filters = registerOutput<NotificationChannelFilters?>('filters');
    this.region = registerOutput<String>('region');
    this.sns = registerOutput<NotificationChannelSns>('sns');
  }
}

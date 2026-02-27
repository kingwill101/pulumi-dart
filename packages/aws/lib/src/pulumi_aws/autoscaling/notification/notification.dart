import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_type/notification_type.dart';
import 'notification_args.dart';

/// Provides an AutoScaling Group with Notification support, via SNS Topics. Each of
/// the `notifications` map to a [Notification Configuration](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DescribeNotificationConfigurations.html) inside Amazon Web
/// Services, and are applied to each AutoScaling Group you supply.
///
/// ## Example Usage
///
/// Basic usage:
class Notification extends pulumi.CustomResource {
  /// List of AutoScaling Group Names
  late final pulumi.Output<List<String>> groupNames;

  /// List of Notification Types that trigger
  /// notifications. Acceptable values are documented [in the AWS documentation here](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_NotificationConfiguration.html)
  late final pulumi.Output<List<NotificationType>> notifications;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Topic ARN for notifications to be sent through
  late final pulumi.Output<String> topicArn;

  Notification(
    String name, {
    NotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/notification:Notification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupNames = registerOutput<List<String>>('groupNames');
    this.notifications =
        registerOutput<List<NotificationType>>('notifications');
    this.region = registerOutput<String>('region');
    this.topicArn = registerOutput<String>('topicArn');
  }
}

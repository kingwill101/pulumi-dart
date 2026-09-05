import 'package:pulumi/pulumi.dart' as pulumi;

/// See https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_NotificationConfiguration.html
enum NotificationType implements pulumi.PulumiEnum<String> {
  instanceLaunch("autoscaling:EC2_INSTANCE_LAUNCH"),
  instanceTerminate("autoscaling:EC2_INSTANCE_TERMINATE"),
  instanceLaunchError("autoscaling:EC2_INSTANCE_LAUNCH_ERROR"),
  instanceTerminateError("autoscaling:EC2_INSTANCE_TERMINATE_ERROR"),
  testNotification("autoscaling:TEST_NOTIFICATION");

  const NotificationType(this.wireValue);
  @override
  final String wireValue;

  static NotificationType fromValue(String value) {
    for (final item in NotificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationType value: $value');
  }
}

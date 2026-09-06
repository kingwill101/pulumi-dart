import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to determine the email notification type.
enum EmailNotificationEnableType implements pulumi.PulumiEnum<String> {
  jobCompleted("JobCompleted"),
  jobFailed("JobFailed"),
  jobCancelled("JobCancelled");

  const EmailNotificationEnableType(this.wireValue);
  @override
  final String wireValue;

  static EmailNotificationEnableType fromValue(String value) {
    for (final item in EmailNotificationEnableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EmailNotificationEnableType value: $value');
  }
}

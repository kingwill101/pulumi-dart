/// Enum to determine the email notification type.
enum EmailNotificationEnableType {
  valueJobCompleted("JobCompleted"),
  valueJobFailed("JobFailed"),
  valueJobCancelled("JobCancelled");

  const EmailNotificationEnableType(this.value);
  final String value;

  static EmailNotificationEnableType fromValue(String value) {
    for (final item in EmailNotificationEnableType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EmailNotificationEnableType value: $value');
  }
}


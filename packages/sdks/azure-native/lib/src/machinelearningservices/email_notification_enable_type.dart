/// Enum to determine the email notification type.
enum EmailNotificationEnableType {
  valueJobCompleted("JobCompleted"),
  valueJobFailed("JobFailed"),
  valueJobCancelled("JobCancelled");

  const EmailNotificationEnableType(this.wireValue);
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


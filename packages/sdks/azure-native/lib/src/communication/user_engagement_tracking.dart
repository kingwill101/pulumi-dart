import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes whether user engagement tracking is enabled or disabled.
enum UserEngagementTracking implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const UserEngagementTracking(this.wireValue);
  @override
  final String wireValue;

  static UserEngagementTracking fromValue(String value) {
    for (final item in UserEngagementTracking.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserEngagementTracking value: $value');
  }
}

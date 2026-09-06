import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of notification to be sent.
enum NotificationType implements pulumi.PulumiEnum<String> {
  email("Email");

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

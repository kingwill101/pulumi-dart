/// Notification options.
enum NotificationOptions {
  notSpecified("NotSpecified"),
  none("None"),
  emitSpendingLimit("EmitSpendingLimit");

  const NotificationOptions(this.value);
  final String value;

  static NotificationOptions fromValue(String value) {
    for (final item in NotificationOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationOptions value: $value');
  }
}


/// Serving status of this application.
enum AppServingStatus2 {
  unspecified("UNSPECIFIED"),
  serving("SERVING"),
  userDisabled("USER_DISABLED"),
  systemDisabled("SYSTEM_DISABLED");

  const AppServingStatus2(this.value);
  final String value;

  static AppServingStatus2 fromValue(String value) {
    for (final item in AppServingStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServingStatus2 value: $value');
  }
}

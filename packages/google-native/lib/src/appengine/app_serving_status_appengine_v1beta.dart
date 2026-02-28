/// Serving status of this application.
enum AppServingStatusAppengineV1beta {
  unspecified("UNSPECIFIED"),
  serving("SERVING"),
  userDisabled("USER_DISABLED"),
  systemDisabled("SYSTEM_DISABLED");

  const AppServingStatusAppengineV1beta(this.value);
  final String value;

  static AppServingStatusAppengineV1beta fromValue(String value) {
    for (final item in AppServingStatusAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServingStatusAppengineV1beta value: $value');
  }
}


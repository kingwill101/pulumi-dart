/// Defines how to handle a trailing slash in the URL path.
enum ServingConfigTrailingSlashBehavior {
  trailingSlashBehaviorUnspecified("TRAILING_SLASH_BEHAVIOR_UNSPECIFIED"),
  add("ADD"),
  remove("REMOVE");

  const ServingConfigTrailingSlashBehavior(this.value);
  final String value;

  static ServingConfigTrailingSlashBehavior fromValue(String value) {
    for (final item in ServingConfigTrailingSlashBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigTrailingSlashBehavior value: $value');
  }
}


/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseMode {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseMode(this.value);
  final String value;

  static RouterBgpAdvertiseMode fromValue(String value) {
    for (final item in RouterBgpAdvertiseMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseMode value: $value');
  }
}


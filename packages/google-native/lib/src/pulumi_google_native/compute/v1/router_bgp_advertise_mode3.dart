/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseMode3 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseMode3(this.value);
  final String value;

  static RouterBgpAdvertiseMode3 fromValue(String value) {
    for (final item in RouterBgpAdvertiseMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseMode3 value: $value');
  }
}

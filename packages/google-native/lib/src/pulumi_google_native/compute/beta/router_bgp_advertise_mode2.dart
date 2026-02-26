/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseMode2 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseMode2(this.value);
  final String value;

  static RouterBgpAdvertiseMode2 fromValue(String value) {
    for (final item in RouterBgpAdvertiseMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseMode2 value: $value');
  }
}

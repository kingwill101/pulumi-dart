/// Flag indicating whether subvolume operations are enabled on the volume
enum EnableSubvolumes {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableSubvolumes(this.value);
  final String value;

  static EnableSubvolumes fromValue(String value) {
    for (final item in EnableSubvolumes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableSubvolumes value: $value');
  }
}


/// Flag indicating whether subvolume operations are enabled on the volume
enum EnableSubvolumes {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableSubvolumes(this.wireValue);
  final String wireValue;

  static EnableSubvolumes fromValue(String value) {
    for (final item in EnableSubvolumes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableSubvolumes value: $value');
  }
}

/// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
enum AvsDataStore {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AvsDataStore(this.value);
  final String value;

  static AvsDataStore fromValue(String value) {
    for (final item in AvsDataStore.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvsDataStore value: $value');
  }
}


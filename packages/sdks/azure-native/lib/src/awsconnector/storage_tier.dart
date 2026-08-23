/// Property value
enum StorageTier {
  archive("archive"),
  standard("standard");

  const StorageTier(this.wireValue);
  final String wireValue;

  static StorageTier fromValue(String value) {
    for (final item in StorageTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTier value: $value');
  }
}

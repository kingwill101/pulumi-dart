/// Property value
enum StorageTier {
  archive("archive"),
  standard("standard");

  const StorageTier(this.value);
  final String value;

  static StorageTier fromValue(String value) {
    for (final item in StorageTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTier value: $value');
  }
}


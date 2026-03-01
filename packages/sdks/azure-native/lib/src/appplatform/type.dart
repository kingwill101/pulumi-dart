/// The type of the underlying resource to mount as a persistent disk.
enum Type {
  valueAzureFileVolume("AzureFileVolume");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}


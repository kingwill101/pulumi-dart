/// The type of the underlying resource to mount as a persistent disk.
enum Type {
  valueAzureFileVolume("AzureFileVolume");

  const Type(this.wireValue);
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

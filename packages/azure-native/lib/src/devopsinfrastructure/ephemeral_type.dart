/// The ephemeral type of the image.
enum EphemeralType {
  automatic("Automatic"),
  cacheDisk("CacheDisk"),
  resourceDisk("ResourceDisk");

  const EphemeralType(this.value);
  final String value;

  static EphemeralType fromValue(String value) {
    for (final item in EphemeralType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EphemeralType value: $value');
  }
}


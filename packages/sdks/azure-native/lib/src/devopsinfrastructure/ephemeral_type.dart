/// The ephemeral type of the image.
enum EphemeralType {
  automatic("Automatic"),
  cacheDisk("CacheDisk"),
  resourceDisk("ResourceDisk");

  const EphemeralType(this.wireValue);
  final String wireValue;

  static EphemeralType fromValue(String value) {
    for (final item in EphemeralType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EphemeralType value: $value');
  }
}

/// The type of this Volume.
enum VolumeConfigType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  flash("FLASH"),
  disk("DISK");

  const VolumeConfigType(this.value);
  final String value;

  static VolumeConfigType fromValue(String value) {
    for (final item in VolumeConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeConfigType value: $value');
  }
}


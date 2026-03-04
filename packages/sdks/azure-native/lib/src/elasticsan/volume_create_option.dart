/// This enumerates the possible sources of a volume creation.
enum VolumeCreateOption {
  valueNone("None"),
  valueVolumeSnapshot("VolumeSnapshot"),
  valueDiskSnapshot("DiskSnapshot"),
  valueDisk("Disk"),
  valueDiskRestorePoint("DiskRestorePoint");

  const VolumeCreateOption(this.wireValue);
  final String wireValue;

  static VolumeCreateOption fromValue(String value) {
    for (final item in VolumeCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeCreateOption value: $value');
  }
}

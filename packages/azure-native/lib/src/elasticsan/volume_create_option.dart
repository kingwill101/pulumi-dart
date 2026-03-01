/// This enumerates the possible sources of a volume creation.
enum VolumeCreateOption {
  valueNone("None"),
  valueVolumeSnapshot("VolumeSnapshot"),
  valueDiskSnapshot("DiskSnapshot"),
  valueDisk("Disk"),
  valueDiskRestorePoint("DiskRestorePoint");

  const VolumeCreateOption(this.value);
  final String value;

  static VolumeCreateOption fromValue(String value) {
    for (final item in VolumeCreateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeCreateOption value: $value');
  }
}


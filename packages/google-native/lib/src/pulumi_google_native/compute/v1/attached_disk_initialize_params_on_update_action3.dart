/// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
enum AttachedDiskInitializeParamsOnUpdateAction3 {
  recreateDisk("RECREATE_DISK"),
  recreateDiskIfSourceChanged("RECREATE_DISK_IF_SOURCE_CHANGED"),
  useExistingDisk("USE_EXISTING_DISK");

  const AttachedDiskInitializeParamsOnUpdateAction3(this.value);
  final String value;

  static AttachedDiskInitializeParamsOnUpdateAction3 fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsOnUpdateAction3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AttachedDiskInitializeParamsOnUpdateAction3 value: $value');
  }
}

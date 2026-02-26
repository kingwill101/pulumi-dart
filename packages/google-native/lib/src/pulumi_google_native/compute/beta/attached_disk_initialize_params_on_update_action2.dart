/// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
enum AttachedDiskInitializeParamsOnUpdateAction2 {
  recreateDisk("RECREATE_DISK"),
  recreateDiskIfSourceChanged("RECREATE_DISK_IF_SOURCE_CHANGED"),
  useExistingDisk("USE_EXISTING_DISK");

  const AttachedDiskInitializeParamsOnUpdateAction2(this.value);
  final String value;

  static AttachedDiskInitializeParamsOnUpdateAction2 fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsOnUpdateAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AttachedDiskInitializeParamsOnUpdateAction2 value: $value');
  }
}

/// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
enum AttachedDiskSavedStateComputeBeta {
  diskSavedStateUnspecified("DISK_SAVED_STATE_UNSPECIFIED"),
  preserved("PRESERVED");

  const AttachedDiskSavedStateComputeBeta(this.value);
  final String value;

  static AttachedDiskSavedStateComputeBeta fromValue(String value) {
    for (final item in AttachedDiskSavedStateComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AttachedDiskSavedStateComputeBeta value: $value',
    );
  }
}

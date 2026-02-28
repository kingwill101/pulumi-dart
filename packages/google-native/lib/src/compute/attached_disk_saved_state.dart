/// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
enum AttachedDiskSavedState {
  diskSavedStateUnspecified("DISK_SAVED_STATE_UNSPECIFIED"),
  preserved("PRESERVED");

  const AttachedDiskSavedState(this.value);
  final String value;

  static AttachedDiskSavedState fromValue(String value) {
    for (final item in AttachedDiskSavedState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskSavedState value: $value');
  }
}

/// Specifies whether OS Disk should be deleted or detached upon VM deletion. Possible values are: Delete, Detach. The default value is set to Detach. For an ephemeral OS Disk, the default value is set to Delete. The user cannot change the delete option for an ephemeral OS Disk.
enum DiskDeleteOptionTypes {
  delete("Delete"),
  detach("Detach");

  const DiskDeleteOptionTypes(this.wireValue);
  final String wireValue;

  static DiskDeleteOptionTypes fromValue(String value) {
    for (final item in DiskDeleteOptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskDeleteOptionTypes value: $value');
  }
}

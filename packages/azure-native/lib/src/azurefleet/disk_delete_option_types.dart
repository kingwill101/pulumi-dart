/// Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion
/// (This feature is available for VMSS with Flexible OrchestrationMode only).
/// <br><br> Possible values: <br><br> **Delete** If this value is used, the OS
/// disk is deleted when VMSS Flex VM is deleted.<br><br> **Detach** If this value
/// is used, the OS disk is retained after VMSS Flex VM is deleted. <br><br> The
/// default value is set to **Delete**. For an Ephemeral OS Disk, the default value
/// is set to **Delete**. User cannot change the delete option for Ephemeral OS
/// Disk.
enum DiskDeleteOptionTypes {
  delete("Delete"),
  detach("Detach");

  const DiskDeleteOptionTypes(this.value);
  final String value;

  static DiskDeleteOptionTypes fromValue(String value) {
    for (final item in DiskDeleteOptionTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskDeleteOptionTypes value: $value');
  }
}


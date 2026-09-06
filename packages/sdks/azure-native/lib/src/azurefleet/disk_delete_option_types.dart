import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion
/// (This feature is available for VMSS with Flexible OrchestrationMode only).
/// &lt;br&gt;&lt;br&gt; Possible values: &lt;br&gt;&lt;br&gt; **Delete** If this value is used, the OS
/// disk is deleted when VMSS Flex VM is deleted.&lt;br&gt;&lt;br&gt; **Detach** If this value
/// is used, the OS disk is retained after VMSS Flex VM is deleted. &lt;br&gt;&lt;br&gt; The
/// default value is set to **Delete**. For an Ephemeral OS Disk, the default value
/// is set to **Delete**. User cannot change the delete option for Ephemeral OS
/// Disk.
enum DiskDeleteOptionTypes implements pulumi.PulumiEnum<String> {
  delete("Delete"),
  detach("Detach");

  const DiskDeleteOptionTypes(this.wireValue);
  @override
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

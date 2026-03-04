/// Specifies the resilient VM deletion status for the virtual machine.
enum ResilientVMDeletionStatus {
  enabled("Enabled"),
  disabled("Disabled"),
  inProgress("InProgress"),
  failed("Failed");

  const ResilientVMDeletionStatus(this.wireValue);
  final String wireValue;

  static ResilientVMDeletionStatus fromValue(String value) {
    for (final item in ResilientVMDeletionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResilientVMDeletionStatus value: $value');
  }
}

/// Specifies the resilient VM deletion status for the virtual machine.
enum ResilientVMDeletionStatus {
  enabled("Enabled"),
  disabled("Disabled"),
  inProgress("InProgress"),
  failed("Failed");

  const ResilientVMDeletionStatus(this.value);
  final String value;

  static ResilientVMDeletionStatus fromValue(String value) {
    for (final item in ResilientVMDeletionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResilientVMDeletionStatus value: $value');
  }
}


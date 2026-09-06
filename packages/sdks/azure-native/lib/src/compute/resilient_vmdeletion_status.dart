import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the resilient VM deletion status for the virtual machine.
enum ResilientVMDeletionStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled"),
  inProgress("InProgress"),
  failed("Failed");

  const ResilientVMDeletionStatus(this.wireValue);
  @override
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

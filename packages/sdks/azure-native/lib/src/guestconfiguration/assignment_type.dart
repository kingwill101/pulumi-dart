import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
enum AssignmentType implements pulumi.PulumiEnum<String> {
  audit("Audit"),
  deployAndAutoCorrect("DeployAndAutoCorrect"),
  applyAndAutoCorrect("ApplyAndAutoCorrect"),
  applyAndMonitor("ApplyAndMonitor");

  const AssignmentType(this.wireValue);
  @override
  final String wireValue;

  static AssignmentType fromValue(String value) {
    for (final item in AssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentType value: $value');
  }
}

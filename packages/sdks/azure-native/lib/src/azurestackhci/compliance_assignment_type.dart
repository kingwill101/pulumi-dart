import 'package:pulumi/pulumi.dart' as pulumi;

/// WDAC Compliance Assignment
enum ComplianceAssignmentType implements pulumi.PulumiEnum<String> {
  audit("Audit"),
  applyAndAutoCorrect("ApplyAndAutoCorrect");

  const ComplianceAssignmentType(this.wireValue);
  @override
  final String wireValue;

  static ComplianceAssignmentType fromValue(String value) {
    for (final item in ComplianceAssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceAssignmentType value: $value');
  }
}

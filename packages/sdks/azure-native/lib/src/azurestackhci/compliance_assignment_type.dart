/// WDAC Compliance Assignment
enum ComplianceAssignmentType {
  audit("Audit"),
  applyAndAutoCorrect("ApplyAndAutoCorrect");

  const ComplianceAssignmentType(this.value);
  final String value;

  static ComplianceAssignmentType fromValue(String value) {
    for (final item in ComplianceAssignmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceAssignmentType value: $value');
  }
}


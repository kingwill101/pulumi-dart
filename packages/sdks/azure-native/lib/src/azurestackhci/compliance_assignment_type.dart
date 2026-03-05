/// WDAC Compliance Assignment
enum ComplianceAssignmentType {
  audit("Audit"),
  applyAndAutoCorrect("ApplyAndAutoCorrect");

  const ComplianceAssignmentType(this.wireValue);
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


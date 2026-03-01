/// Describes the license assignment state (Assigned or NotAssigned).
enum LicenseAssignmentState {
  valueAssigned("Assigned"),
  valueNotAssigned("NotAssigned");

  const LicenseAssignmentState(this.value);
  final String value;

  static LicenseAssignmentState fromValue(String value) {
    for (final item in LicenseAssignmentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseAssignmentState value: $value');
  }
}


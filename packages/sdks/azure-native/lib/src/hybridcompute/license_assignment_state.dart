/// Describes the license assignment state (Assigned or NotAssigned).
enum LicenseAssignmentState {
  valueAssigned("Assigned"),
  valueNotAssigned("NotAssigned");

  const LicenseAssignmentState(this.wireValue);
  final String wireValue;

  static LicenseAssignmentState fromValue(String value) {
    for (final item in LicenseAssignmentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseAssignmentState value: $value');
  }
}

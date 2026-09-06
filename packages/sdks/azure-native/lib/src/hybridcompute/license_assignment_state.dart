import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the license assignment state (Assigned or NotAssigned).
enum LicenseAssignmentState implements pulumi.PulumiEnum<String> {
  valueAssigned("Assigned"),
  valueNotAssigned("NotAssigned");

  const LicenseAssignmentState(this.wireValue);
  @override
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

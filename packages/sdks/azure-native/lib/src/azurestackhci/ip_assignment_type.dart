/// Type of IP assignment.
enum IpAssignmentType {
  automatic("Automatic"),
  manual("Manual");

  const IpAssignmentType(this.wireValue);
  final String wireValue;

  static IpAssignmentType fromValue(String value) {
    for (final item in IpAssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAssignmentType value: $value');
  }
}

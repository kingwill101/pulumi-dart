/// Type of IP assignment.
enum IpAssignmentType {
  automatic("Automatic"),
  manual("Manual");

  const IpAssignmentType(this.value);
  final String value;

  static IpAssignmentType fromValue(String value) {
    for (final item in IpAssignmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAssignmentType value: $value');
  }
}


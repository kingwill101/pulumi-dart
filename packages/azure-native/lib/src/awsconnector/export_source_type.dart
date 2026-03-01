/// Property value
enum ExportSourceType {
  cLUSTER("CLUSTER"),
  sNAPSHOT("SNAPSHOT");

  const ExportSourceType(this.value);
  final String value;

  static ExportSourceType fromValue(String value) {
    for (final item in ExportSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportSourceType value: $value');
  }
}


/// Property value
enum ExportSourceType {
  cLUSTER("CLUSTER"),
  sNAPSHOT("SNAPSHOT");

  const ExportSourceType(this.wireValue);
  final String wireValue;

  static ExportSourceType fromValue(String value) {
    for (final item in ExportSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportSourceType value: $value');
  }
}

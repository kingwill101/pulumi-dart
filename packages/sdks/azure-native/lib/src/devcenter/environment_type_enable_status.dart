/// Defines whether this Environment Type can be used in this Project.
enum EnvironmentTypeEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnvironmentTypeEnableStatus(this.wireValue);
  final String wireValue;

  static EnvironmentTypeEnableStatus fromValue(String value) {
    for (final item in EnvironmentTypeEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentTypeEnableStatus value: $value');
  }
}


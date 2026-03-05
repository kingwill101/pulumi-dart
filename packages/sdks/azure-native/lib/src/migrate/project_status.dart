/// Assessment project status.
enum ProjectStatus {
  valueActive("Active"),
  valueInactive("Inactive");

  const ProjectStatus(this.wireValue);
  final String wireValue;

  static ProjectStatus fromValue(String value) {
    for (final item in ProjectStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectStatus value: $value');
  }
}


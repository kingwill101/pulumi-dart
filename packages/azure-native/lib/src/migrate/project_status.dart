/// Assessment project status.
enum ProjectStatus {
  valueActive("Active"),
  valueInactive("Inactive");

  const ProjectStatus(this.value);
  final String value;

  static ProjectStatus fromValue(String value) {
    for (final item in ProjectStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectStatus value: $value');
  }
}


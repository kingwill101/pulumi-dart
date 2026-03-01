/// Property value
enum ProjectVisibilityType {
  pRIVATE("PRIVATE"),
  pUBLICREAD("PUBLIC_READ");

  const ProjectVisibilityType(this.value);
  final String value;

  static ProjectVisibilityType fromValue(String value) {
    for (final item in ProjectVisibilityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectVisibilityType value: $value');
  }
}


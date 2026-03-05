/// Property value
enum ProjectVisibilityType {
  pRIVATE("PRIVATE"),
  pUBLICREAD("PUBLIC_READ");

  const ProjectVisibilityType(this.wireValue);
  final String wireValue;

  static ProjectVisibilityType fromValue(String value) {
    for (final item in ProjectVisibilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectVisibilityType value: $value');
  }
}


/// Which interpreter (python or jinja) should be used during expansion.
enum TemplateContentsInterpreterDeploymentmanagerV2beta {
  unknownInterpreter("UNKNOWN_INTERPRETER"),
  python("PYTHON"),
  jinja("JINJA");

  const TemplateContentsInterpreterDeploymentmanagerV2beta(this.value);
  final String value;

  static TemplateContentsInterpreterDeploymentmanagerV2beta fromValue(
    String value,
  ) {
    for (final item
        in TemplateContentsInterpreterDeploymentmanagerV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TemplateContentsInterpreterDeploymentmanagerV2beta value: $value',
    );
  }
}

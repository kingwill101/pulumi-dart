/// Which interpreter (python or jinja) should be used during expansion.
enum TemplateContentsInterpreter2 {
  unknownInterpreter("UNKNOWN_INTERPRETER"),
  python("PYTHON"),
  jinja("JINJA");

  const TemplateContentsInterpreter2(this.value);
  final String value;

  static TemplateContentsInterpreter2 fromValue(String value) {
    for (final item in TemplateContentsInterpreter2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateContentsInterpreter2 value: $value');
  }
}

/// Which interpreter (python or jinja) should be used during expansion.
enum TemplateContentsInterpreter {
  unknownInterpreter("UNKNOWN_INTERPRETER"),
  python("PYTHON"),
  jinja("JINJA");

  const TemplateContentsInterpreter(this.value);
  final String value;

  static TemplateContentsInterpreter fromValue(String value) {
    for (final item in TemplateContentsInterpreter.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateContentsInterpreter value: $value');
  }
}

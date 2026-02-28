/// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
enum RoutineLanguage {
  languageUnspecified("LANGUAGE_UNSPECIFIED"),
  sql("SQL"),
  javascript("JAVASCRIPT"),
  python("PYTHON"),
  java("JAVA"),
  scala("SCALA");

  const RoutineLanguage(this.value);
  final String value;

  static RoutineLanguage fromValue(String value) {
    for (final item in RoutineLanguage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineLanguage value: $value');
  }
}

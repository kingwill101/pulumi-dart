/// The programming language used.
enum GenerationLanguage {
  valueClojure("clojure"),
  valueCsharp("csharp"),
  valueErlang("erlang"),
  valueGo("go"),
  valueGomodule("gomodule"),
  valueGradle("gradle"),
  valueJava("java"),
  valueJavascript("javascript"),
  valuePhp("php"),
  valuePython("python"),
  valueRuby("ruby"),
  valueRust("rust"),
  valueSwift("swift");

  const GenerationLanguage(this.wireValue);
  final String wireValue;

  static GenerationLanguage fromValue(String value) {
    for (final item in GenerationLanguage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GenerationLanguage value: $value');
  }
}

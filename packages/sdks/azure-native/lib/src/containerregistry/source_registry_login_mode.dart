/// The authentication mode which determines the source registry login scope. The credentials for the source registry
/// will be generated using the given scope. These credentials will be used to login to
/// the source registry during the run.
enum SourceRegistryLoginMode {
  valueNone("None"),
  valueDefault("Default");

  const SourceRegistryLoginMode(this.value);
  final String value;

  static SourceRegistryLoginMode fromValue(String value) {
    for (final item in SourceRegistryLoginMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceRegistryLoginMode value: $value');
  }
}


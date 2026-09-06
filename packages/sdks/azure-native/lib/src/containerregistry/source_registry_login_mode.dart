import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication mode which determines the source registry login scope. The credentials for the source registry
/// will be generated using the given scope. These credentials will be used to login to
/// the source registry during the run.
enum SourceRegistryLoginMode implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueDefault("Default");

  const SourceRegistryLoginMode(this.wireValue);
  @override
  final String wireValue;

  static SourceRegistryLoginMode fromValue(String value) {
    for (final item in SourceRegistryLoginMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceRegistryLoginMode value: $value');
  }
}

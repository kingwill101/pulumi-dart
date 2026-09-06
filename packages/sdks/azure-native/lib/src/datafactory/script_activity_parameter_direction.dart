import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction of the parameter.
enum ScriptActivityParameterDirection implements pulumi.PulumiEnum<String> {
  valueInput("Input"),
  valueOutput("Output"),
  valueInputOutput("InputOutput");

  const ScriptActivityParameterDirection(this.wireValue);
  @override
  final String wireValue;

  static ScriptActivityParameterDirection fromValue(String value) {
    for (final item in ScriptActivityParameterDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityParameterDirection value: $value');
  }
}

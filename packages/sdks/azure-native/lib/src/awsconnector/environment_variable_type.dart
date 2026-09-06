import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum EnvironmentVariableType implements pulumi.PulumiEnum<String> {
  pARAMETERSTORE("PARAMETER_STORE"),
  pLAINTEXT("PLAINTEXT"),
  sECRETSMANAGER("SECRETS_MANAGER");

  const EnvironmentVariableType(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentVariableType fromValue(String value) {
    for (final item in EnvironmentVariableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentVariableType value: $value');
  }
}

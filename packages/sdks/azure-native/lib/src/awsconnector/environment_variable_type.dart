/// Property value
enum EnvironmentVariableType {
  pARAMETERSTORE("PARAMETER_STORE"),
  pLAINTEXT("PLAINTEXT"),
  sECRETSMANAGER("SECRETS_MANAGER");

  const EnvironmentVariableType(this.value);
  final String value;

  static EnvironmentVariableType fromValue(String value) {
    for (final item in EnvironmentVariableType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentVariableType value: $value');
  }
}


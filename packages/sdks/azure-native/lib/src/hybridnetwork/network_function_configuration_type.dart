/// The value which indicates if NF  values are secrets
enum NetworkFunctionConfigurationType {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const NetworkFunctionConfigurationType(this.wireValue);
  final String wireValue;

  static NetworkFunctionConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionConfigurationType value: $value');
  }
}


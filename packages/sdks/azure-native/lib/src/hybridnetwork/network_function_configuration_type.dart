/// The value which indicates if NF  values are secrets
enum NetworkFunctionConfigurationType {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const NetworkFunctionConfigurationType(this.value);
  final String value;

  static NetworkFunctionConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionConfigurationType value: $value');
  }
}


/// Type of integration runtime.
enum IntegrationRuntimeType {
  managed("Managed"),
  selfHosted("SelfHosted");

  const IntegrationRuntimeType(this.wireValue);
  final String wireValue;

  static IntegrationRuntimeType fromValue(String value) {
    for (final item in IntegrationRuntimeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeType value: $value');
  }
}

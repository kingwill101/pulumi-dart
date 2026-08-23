/// Type of integration runtime.
enum IntegrationRuntimeReferenceType {
  integrationRuntimeReference("IntegrationRuntimeReference");

  const IntegrationRuntimeReferenceType(this.wireValue);
  final String wireValue;

  static IntegrationRuntimeReferenceType fromValue(String value) {
    for (final item in IntegrationRuntimeReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeReferenceType value: $value');
  }
}

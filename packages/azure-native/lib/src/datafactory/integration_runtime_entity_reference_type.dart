/// The type of this referenced entity.
enum IntegrationRuntimeEntityReferenceType {
  valueIntegrationRuntimeReference("IntegrationRuntimeReference"),
  valueLinkedServiceReference("LinkedServiceReference");

  const IntegrationRuntimeEntityReferenceType(this.value);
  final String value;

  static IntegrationRuntimeEntityReferenceType fromValue(String value) {
    for (final item in IntegrationRuntimeEntityReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeEntityReferenceType value: $value');
  }
}


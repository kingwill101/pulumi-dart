/// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
enum ComputeType {
  default_("Default"),
  confidential("Confidential");

  const ComputeType(this.value);
  final String value;

  static ComputeType fromValue(String value) {
    for (final item in ComputeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeType value: $value');
  }
}


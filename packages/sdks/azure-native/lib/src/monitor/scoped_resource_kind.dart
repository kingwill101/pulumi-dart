/// The kind of scoped Azure monitor resource.
enum ScopedResourceKind {
  valueResource("Resource"),
  valueMetrics("Metrics");

  const ScopedResourceKind(this.wireValue);
  final String wireValue;

  static ScopedResourceKind fromValue(String value) {
    for (final item in ScopedResourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopedResourceKind value: $value');
  }
}


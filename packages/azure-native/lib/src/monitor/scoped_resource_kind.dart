/// The kind of scoped Azure monitor resource.
enum ScopedResourceKind {
  valueResource("Resource"),
  valueMetrics("Metrics");

  const ScopedResourceKind(this.value);
  final String value;

  static ScopedResourceKind fromValue(String value) {
    for (final item in ScopedResourceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopedResourceKind value: $value');
  }
}


/// The kind of the resource.
enum KnownDataCollectionEndpointResourceKind {
  valueLinux("Linux"),
  valueWindows("Windows");

  const KnownDataCollectionEndpointResourceKind(this.value);
  final String value;

  static KnownDataCollectionEndpointResourceKind fromValue(String value) {
    for (final item in KnownDataCollectionEndpointResourceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataCollectionEndpointResourceKind value: $value');
  }
}


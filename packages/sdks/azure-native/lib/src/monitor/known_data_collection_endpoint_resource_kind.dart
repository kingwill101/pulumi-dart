/// The kind of the resource.
enum KnownDataCollectionEndpointResourceKind {
  valueLinux("Linux"),
  valueWindows("Windows");

  const KnownDataCollectionEndpointResourceKind(this.wireValue);
  final String wireValue;

  static KnownDataCollectionEndpointResourceKind fromValue(String value) {
    for (final item in KnownDataCollectionEndpointResourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataCollectionEndpointResourceKind value: $value');
  }
}


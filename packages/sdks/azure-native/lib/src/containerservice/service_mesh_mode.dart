/// Mode of the service mesh.
enum ServiceMeshMode {
  valueIstio("Istio"),
  valueDisabled("Disabled");

  const ServiceMeshMode(this.wireValue);
  final String wireValue;

  static ServiceMeshMode fromValue(String value) {
    for (final item in ServiceMeshMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMode value: $value');
  }
}

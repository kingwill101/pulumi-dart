/// Mode of the service mesh.
enum ServiceMeshMode {
  valueIstio("Istio"),
  valueDisabled("Disabled");

  const ServiceMeshMode(this.value);
  final String value;

  static ServiceMeshMode fromValue(String value) {
    for (final item in ServiceMeshMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMode value: $value');
  }
}


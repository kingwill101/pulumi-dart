import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of the service mesh.
enum ServiceMeshMode implements pulumi.PulumiEnum<String> {
  valueIstio("Istio"),
  valueDisabled("Disabled");

  const ServiceMeshMode(this.wireValue);
  @override
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

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network dataplane used in the Kubernetes cluster.
enum NetworkDataplane implements pulumi.PulumiEnum<String> {
  valueAzure("azure"),
  valueCilium("cilium");

  const NetworkDataplane(this.wireValue);
  @override
  final String wireValue;

  static NetworkDataplane fromValue(String value) {
    for (final item in NetworkDataplane.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkDataplane value: $value');
  }
}

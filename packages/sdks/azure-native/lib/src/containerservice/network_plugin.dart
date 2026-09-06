import 'package:pulumi/pulumi.dart' as pulumi;

/// Network plugin used for building the Kubernetes network.
enum NetworkPlugin implements pulumi.PulumiEnum<String> {
  valueAzure("azure"),
  valueKubenet("kubenet"),
  valueNone("none");

  const NetworkPlugin(this.wireValue);
  @override
  final String wireValue;

  static NetworkPlugin fromValue(String value) {
    for (final item in NetworkPlugin.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPlugin value: $value');
  }
}

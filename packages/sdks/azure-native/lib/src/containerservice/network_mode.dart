import 'package:pulumi/pulumi.dart' as pulumi;

/// The network mode Azure CNI is configured with. This cannot be specified if networkPlugin is anything other than 'azure'.
enum NetworkMode implements pulumi.PulumiEnum<String> {
  valueTransparent("transparent"),
  valueBridge("bridge");

  const NetworkMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkMode fromValue(String value) {
    for (final item in NetworkMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkMode value: $value');
  }
}

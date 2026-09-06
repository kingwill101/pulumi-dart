import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to install GPU drivers. When it's not specified, default is Install.
enum GPUDriver implements pulumi.PulumiEnum<String> {
  valueInstall("Install"),
  valueNone("None");

  const GPUDriver(this.wireValue);
  @override
  final String wireValue;

  static GPUDriver fromValue(String value) {
    for (final item in GPUDriver.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUDriver value: $value');
  }
}

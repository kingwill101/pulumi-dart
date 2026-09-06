import 'package:pulumi/pulumi.dart' as pulumi;

/// connector type
enum Platform implements pulumi.PulumiEnum<String> {
  azureMonitor("AzureMonitor");

  const Platform(this.wireValue);
  @override
  final String wireValue;

  static Platform fromValue(String value) {
    for (final item in Platform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Platform value: $value');
  }
}

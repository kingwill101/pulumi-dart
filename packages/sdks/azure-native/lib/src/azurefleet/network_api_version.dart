import 'package:pulumi/pulumi.dart' as pulumi;

/// specifies the Microsoft.Network API version used when creating networking
/// resources in the Network Interface Configurations for Virtual Machine Scale Set
/// with orchestration mode 'Flexible'
enum NetworkApiVersion implements pulumi.PulumiEnum<String> {
  v20201101("2020-11-01");

  const NetworkApiVersion(this.wireValue);
  @override
  final String wireValue;

  static NetworkApiVersion fromValue(String value) {
    for (final item in NetworkApiVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkApiVersion value: $value');
  }
}

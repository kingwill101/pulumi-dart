import 'package:pulumi/pulumi.dart' as pulumi;

/// How to connect to the azure services needed for running the cluster
enum AzureConnectionType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueVPN("VPN");

  const AzureConnectionType(this.wireValue);
  @override
  final String wireValue;

  static AzureConnectionType fromValue(String value) {
    for (final item in AzureConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureConnectionType value: $value');
  }
}

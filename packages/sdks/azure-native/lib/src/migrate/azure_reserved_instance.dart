import 'package:pulumi/pulumi.dart' as pulumi;

/// Reserved instance.
enum AzureReservedInstance implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueRI1Year("RI1Year"),
  valueRI3Year("RI3Year");

  const AzureReservedInstance(this.wireValue);
  @override
  final String wireValue;

  static AzureReservedInstance fromValue(String value) {
    for (final item in AzureReservedInstance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureReservedInstance value: $value');
  }
}

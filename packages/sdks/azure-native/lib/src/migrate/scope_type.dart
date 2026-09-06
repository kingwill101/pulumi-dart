import 'package:pulumi/pulumi.dart' as pulumi;

/// The scope type
enum ScopeType implements pulumi.PulumiEnum<String> {
  serverGroupId("ServerGroupId"),
  azureResourceGraphQuery("AzureResourceGraphQuery");

  const ScopeType(this.wireValue);
  @override
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}

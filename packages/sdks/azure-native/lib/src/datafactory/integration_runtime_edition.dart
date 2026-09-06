import 'package:pulumi/pulumi.dart' as pulumi;

/// The edition for the SSIS Integration Runtime
enum IntegrationRuntimeEdition implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  enterprise("Enterprise");

  const IntegrationRuntimeEdition(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeEdition fromValue(String value) {
    for (final item in IntegrationRuntimeEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeEdition value: $value');
  }
}

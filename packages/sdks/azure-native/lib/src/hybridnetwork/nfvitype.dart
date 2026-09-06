import 'package:pulumi/pulumi.dart' as pulumi;

/// The NFVI type.
enum NFVIType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const NFVIType(this.wireValue);
  @override
  final String wireValue;

  static NFVIType fromValue(String value) {
    for (final item in NFVIType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NFVIType value: $value');
  }
}

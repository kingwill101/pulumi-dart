import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure security offering type.
enum AzureSecurityOfferingType implements pulumi.PulumiEnum<String> {
  nO("NO"),
  mDC("MDC");

  const AzureSecurityOfferingType(this.wireValue);
  @override
  final String wireValue;

  static AzureSecurityOfferingType fromValue(String value) {
    for (final item in AzureSecurityOfferingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSecurityOfferingType value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the azure SQL service tier.
enum AzureSqlServiceTier implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAutomatic("Automatic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical"),
  valueHyperScale("HyperScale");

  const AzureSqlServiceTier(this.wireValue);
  @override
  final String wireValue;

  static AzureSqlServiceTier fromValue(String value) {
    for (final item in AzureSqlServiceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlServiceTier value: $value');
  }
}

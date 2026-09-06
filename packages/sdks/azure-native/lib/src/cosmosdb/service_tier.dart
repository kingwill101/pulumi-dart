import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
enum ServiceTier implements pulumi.PulumiEnum<String> {
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical");

  const ServiceTier(this.wireValue);
  @override
  final String wireValue;

  static ServiceTier fromValue(String value) {
    for (final item in ServiceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTier value: $value');
  }
}

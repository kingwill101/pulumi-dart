import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum DomainProcessingStatusType implements pulumi.PulumiEnum<String> {
  active("Active"),
  creating("Creating"),
  deleting("Deleting"),
  isolated("Isolated"),
  modifying("Modifying"),
  updatingServiceSoftware("UpdatingServiceSoftware"),
  upgradingEngineVersion("UpgradingEngineVersion");

  const DomainProcessingStatusType(this.wireValue);
  @override
  final String wireValue;

  static DomainProcessingStatusType fromValue(String value) {
    for (final item in DomainProcessingStatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainProcessingStatusType value: $value');
  }
}

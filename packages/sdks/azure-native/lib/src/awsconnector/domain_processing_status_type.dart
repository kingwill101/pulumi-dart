/// Property value
enum DomainProcessingStatusType {
  active("Active"),
  creating("Creating"),
  deleting("Deleting"),
  isolated("Isolated"),
  modifying("Modifying"),
  updatingServiceSoftware("UpdatingServiceSoftware"),
  upgradingEngineVersion("UpgradingEngineVersion");

  const DomainProcessingStatusType(this.wireValue);
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

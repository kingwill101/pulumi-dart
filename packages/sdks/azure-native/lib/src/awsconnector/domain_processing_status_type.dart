/// Property value
enum DomainProcessingStatusType {
  active("Active"),
  creating("Creating"),
  deleting("Deleting"),
  isolated("Isolated"),
  modifying("Modifying"),
  updatingServiceSoftware("UpdatingServiceSoftware"),
  upgradingEngineVersion("UpgradingEngineVersion");

  const DomainProcessingStatusType(this.value);
  final String value;

  static DomainProcessingStatusType fromValue(String value) {
    for (final item in DomainProcessingStatusType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainProcessingStatusType value: $value');
  }
}


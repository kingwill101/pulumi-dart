enum AKSVolumeTypes {
  valueAzureDisk("AzureDisk"),
  valueAzureFileShareSMB("AzureFileShareSMB");

  const AKSVolumeTypes(this.wireValue);
  final String wireValue;

  static AKSVolumeTypes fromValue(String value) {
    for (final item in AKSVolumeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSVolumeTypes value: $value');
  }
}

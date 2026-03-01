enum AKSVolumeTypes {
  valueAzureDisk("AzureDisk"),
  valueAzureFileShareSMB("AzureFileShareSMB");

  const AKSVolumeTypes(this.value);
  final String value;

  static AKSVolumeTypes fromValue(String value) {
    for (final item in AKSVolumeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSVolumeTypes value: $value');
  }
}


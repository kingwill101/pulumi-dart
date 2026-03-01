/// If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
enum ProvisionedBandwidthCopyOption {
  none("None"),
  enhanced("Enhanced");

  const ProvisionedBandwidthCopyOption(this.value);
  final String value;

  static ProvisionedBandwidthCopyOption fromValue(String value) {
    for (final item in ProvisionedBandwidthCopyOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisionedBandwidthCopyOption value: $value');
  }
}


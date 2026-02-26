/// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
enum SubnetworkLogConfigMetadata3 {
  customMetadata("CUSTOM_METADATA"),
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const SubnetworkLogConfigMetadata3(this.value);
  final String value;

  static SubnetworkLogConfigMetadata3 fromValue(String value) {
    for (final item in SubnetworkLogConfigMetadata3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkLogConfigMetadata3 value: $value');
  }
}

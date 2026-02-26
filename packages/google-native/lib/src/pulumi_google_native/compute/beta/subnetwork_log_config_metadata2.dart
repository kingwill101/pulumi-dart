/// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
enum SubnetworkLogConfigMetadata2 {
  customMetadata("CUSTOM_METADATA"),
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const SubnetworkLogConfigMetadata2(this.value);
  final String value;

  static SubnetworkLogConfigMetadata2 fromValue(String value) {
    for (final item in SubnetworkLogConfigMetadata2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkLogConfigMetadata2 value: $value');
  }
}

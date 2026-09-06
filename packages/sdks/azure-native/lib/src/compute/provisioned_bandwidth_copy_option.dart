import 'package:pulumi/pulumi.dart' as pulumi;

/// If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
enum ProvisionedBandwidthCopyOption implements pulumi.PulumiEnum<String> {
  none("None"),
  enhanced("Enhanced");

  const ProvisionedBandwidthCopyOption(this.wireValue);
  @override
  final String wireValue;

  static ProvisionedBandwidthCopyOption fromValue(String value) {
    for (final item in ProvisionedBandwidthCopyOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisionedBandwidthCopyOption value: $value');
  }
}

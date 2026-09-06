import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
enum DiskControllerTypes implements pulumi.PulumiEnum<String> {
  sCSI("SCSI"),
  nVMe("NVMe");

  const DiskControllerTypes(this.wireValue);
  @override
  final String wireValue;

  static DiskControllerTypes fromValue(String value) {
    for (final item in DiskControllerTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskControllerTypes value: $value');
  }
}

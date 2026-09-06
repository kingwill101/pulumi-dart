import 'package:pulumi/pulumi.dart' as pulumi;

/// This enumerates the possible sources of a volume creation.
enum VolumeCreateOption implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueVolumeSnapshot("VolumeSnapshot"),
  valueDiskSnapshot("DiskSnapshot"),
  valueDisk("Disk"),
  valueDiskRestorePoint("DiskRestorePoint");

  const VolumeCreateOption(this.wireValue);
  @override
  final String wireValue;

  static VolumeCreateOption fromValue(String value) {
    for (final item in VolumeCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeCreateOption value: $value');
  }
}

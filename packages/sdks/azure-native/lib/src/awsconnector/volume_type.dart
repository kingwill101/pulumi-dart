import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum VolumeType implements pulumi.PulumiEnum<String> {
  gp2("gp2"),
  gp3("gp3"),
  io1("io1"),
  standard("standard");

  const VolumeType(this.wireValue);
  @override
  final String wireValue;

  static VolumeType fromValue(String value) {
    for (final item in VolumeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeType value: $value');
  }
}

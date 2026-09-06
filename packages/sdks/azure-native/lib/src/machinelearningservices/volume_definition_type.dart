import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
enum VolumeDefinitionType implements pulumi.PulumiEnum<String> {
  bind("bind"),
  volume("volume"),
  tmpfs("tmpfs"),
  npipe("npipe");

  const VolumeDefinitionType(this.wireValue);
  @override
  final String wireValue;

  static VolumeDefinitionType fromValue(String value) {
    for (final item in VolumeDefinitionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeDefinitionType value: $value');
  }
}

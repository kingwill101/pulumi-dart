/// Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
enum VolumeDefinitionType {
  valueBind("bind"),
  valueVolume("volume"),
  valueTmpfs("tmpfs"),
  valueNpipe("npipe");

  const VolumeDefinitionType(this.wireValue);
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


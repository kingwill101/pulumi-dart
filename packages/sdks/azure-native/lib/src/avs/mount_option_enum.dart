/// Mode that describes whether the LUN has to be mounted as a datastore or
/// attached as a LUN
enum MountOptionEnum {
  mOUNT("MOUNT"),
  aTTACH("ATTACH");

  const MountOptionEnum(this.wireValue);
  final String wireValue;

  static MountOptionEnum fromValue(String value) {
    for (final item in MountOptionEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MountOptionEnum value: $value');
  }
}


/// Mode that describes whether the LUN has to be mounted as a datastore or
/// attached as a LUN
enum MountOptionEnum {
  mOUNT("MOUNT"),
  aTTACH("ATTACH");

  const MountOptionEnum(this.value);
  final String value;

  static MountOptionEnum fromValue(String value) {
    for (final item in MountOptionEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MountOptionEnum value: $value');
  }
}


import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode that describes whether the LUN has to be mounted as a datastore or
/// attached as a LUN
enum MountOptionEnum implements pulumi.PulumiEnum<String> {
  mOUNT("MOUNT"),
  aTTACH("ATTACH");

  const MountOptionEnum(this.wireValue);
  @override
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

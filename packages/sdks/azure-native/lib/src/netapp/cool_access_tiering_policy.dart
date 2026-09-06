import 'package:pulumi/pulumi.dart' as pulumi;

/// coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
enum CoolAccessTieringPolicy implements pulumi.PulumiEnum<String> {
  valueAuto("Auto"),
  valueSnapshotOnly("SnapshotOnly");

  const CoolAccessTieringPolicy(this.wireValue);
  @override
  final String wireValue;

  static CoolAccessTieringPolicy fromValue(String value) {
    for (final item in CoolAccessTieringPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CoolAccessTieringPolicy value: $value');
  }
}

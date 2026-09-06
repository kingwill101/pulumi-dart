import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of preferred application group type, default to Desktop Application Group
enum PreferredAppGroupType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueDesktop("Desktop"),
  valueRailApplications("RailApplications");

  const PreferredAppGroupType(this.wireValue);
  @override
  final String wireValue;

  static PreferredAppGroupType fromValue(String value) {
    for (final item in PreferredAppGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredAppGroupType value: $value');
  }
}

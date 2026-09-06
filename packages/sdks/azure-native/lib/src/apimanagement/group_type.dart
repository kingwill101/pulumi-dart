import 'package:pulumi/pulumi.dart' as pulumi;

/// Group type.
enum GroupType implements pulumi.PulumiEnum<String> {
  valueCustom("custom"),
  valueSystem("system"),
  valueExternal("external");

  const GroupType(this.wireValue);
  @override
  final String wireValue;

  static GroupType fromValue(String value) {
    for (final item in GroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupType value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the group type for the assessment.
enum GroupType implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueImport("Import");

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

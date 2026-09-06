import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents type of the object being operated on. Possible values are primary or contributor.
enum MaccEntityType implements pulumi.PulumiEnum<String> {
  primary("Primary"),
  contributor("Contributor");

  const MaccEntityType(this.wireValue);
  @override
  final String wireValue;

  static MaccEntityType fromValue(String value) {
    for (final item in MaccEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccEntityType value: $value');
  }
}

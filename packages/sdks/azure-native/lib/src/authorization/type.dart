import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the role eligibility schedule expiration
enum Type implements pulumi.PulumiEnum<String> {
  valueAfterDuration("AfterDuration"),
  valueAfterDateTime("AfterDateTime"),
  valueNoExpiration("NoExpiration");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

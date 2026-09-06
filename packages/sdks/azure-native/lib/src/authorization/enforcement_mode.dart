import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
enum EnforcementMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueDoNotEnforce("DoNotEnforce"),
  valueEnroll("Enroll");

  const EnforcementMode(this.wireValue);
  @override
  final String wireValue;

  static EnforcementMode fromValue(String value) {
    for (final item in EnforcementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnforcementMode value: $value');
  }
}

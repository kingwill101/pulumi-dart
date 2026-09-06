import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
enum PolicyType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueBuiltIn("BuiltIn"),
  valueCustom("Custom"),
  valueStatic("Static");

  const PolicyType(this.wireValue);
  @override
  final String wireValue;

  static PolicyType fromValue(String value) {
    for (final item in PolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyType value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of custom IP prefix. Should be Singular, Parent, or Child.
enum CustomIpPrefixType implements pulumi.PulumiEnum<String> {
  valueSingular("Singular"),
  valueParent("Parent"),
  valueChild("Child");

  const CustomIpPrefixType(this.wireValue);
  @override
  final String wireValue;

  static CustomIpPrefixType fromValue(String value) {
    for (final item in CustomIpPrefixType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomIpPrefixType value: $value');
  }
}

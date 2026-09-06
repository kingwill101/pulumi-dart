import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom Domain binding type.
enum BindingType implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueAuto("Auto");

  const BindingType(this.wireValue);
  @override
  final String wireValue;

  static BindingType fromValue(String value) {
    for (final item in BindingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BindingType value: $value');
  }
}

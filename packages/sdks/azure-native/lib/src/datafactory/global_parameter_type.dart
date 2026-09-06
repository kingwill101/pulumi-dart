import 'package:pulumi/pulumi.dart' as pulumi;

/// Global Parameter type.
enum GlobalParameterType implements pulumi.PulumiEnum<String> {
  object_("Object"),
  string_("String"),
  int_("Int"),
  float("Float"),
  bool_("Bool"),
  array("Array");

  const GlobalParameterType(this.wireValue);
  @override
  final String wireValue;

  static GlobalParameterType fromValue(String value) {
    for (final item in GlobalParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalParameterType value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Variable type.
enum VariableType implements pulumi.PulumiEnum<String> {
  string_("String"),
  bool_("Bool"),
  array("Array");

  const VariableType(this.wireValue);
  @override
  final String wireValue;

  static VariableType fromValue(String value) {
    for (final item in VariableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableType value: $value');
  }
}

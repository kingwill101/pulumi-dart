import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource element template type.
enum Type implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueArmResourceDefinition("ArmResourceDefinition"),
  valueNetworkFunctionDefinition("NetworkFunctionDefinition");

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

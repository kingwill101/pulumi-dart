/// The resource element template type.
enum Type {
  valueUnknown("Unknown"),
  valueArmResourceDefinition("ArmResourceDefinition"),
  valueNetworkFunctionDefinition("NetworkFunctionDefinition");

  const Type(this.wireValue);
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

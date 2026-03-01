/// The resource element template type.
enum Type {
  valueUnknown("Unknown"),
  valueArmResourceDefinition("ArmResourceDefinition"),
  valueNetworkFunctionDefinition("NetworkFunctionDefinition");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}


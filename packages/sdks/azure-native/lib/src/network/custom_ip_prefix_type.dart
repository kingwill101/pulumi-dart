/// Type of custom IP prefix. Should be Singular, Parent, or Child.
enum CustomIpPrefixType {
  valueSingular("Singular"),
  valueParent("Parent"),
  valueChild("Child");

  const CustomIpPrefixType(this.wireValue);
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


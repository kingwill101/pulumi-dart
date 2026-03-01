/// Type of custom IP prefix. Should be Singular, Parent, or Child.
enum CustomIpPrefixType {
  valueSingular("Singular"),
  valueParent("Parent"),
  valueChild("Child");

  const CustomIpPrefixType(this.value);
  final String value;

  static CustomIpPrefixType fromValue(String value) {
    for (final item in CustomIpPrefixType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomIpPrefixType value: $value');
  }
}


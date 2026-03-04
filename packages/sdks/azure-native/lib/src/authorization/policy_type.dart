/// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
enum PolicyType {
  valueNotSpecified("NotSpecified"),
  valueBuiltIn("BuiltIn"),
  valueCustom("Custom"),
  valueStatic("Static");

  const PolicyType(this.wireValue);
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

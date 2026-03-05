/// Indicates if base policy should be enforced for the policy document.
enum PolicyRestrictionRequireBase {
  valueTrue("true"),
  valueFalse("false");

  const PolicyRestrictionRequireBase(this.wireValue);
  final String wireValue;

  static PolicyRestrictionRequireBase fromValue(String value) {
    for (final item in PolicyRestrictionRequireBase.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRestrictionRequireBase value: $value');
  }
}


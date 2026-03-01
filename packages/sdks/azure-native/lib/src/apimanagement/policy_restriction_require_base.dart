/// Indicates if base policy should be enforced for the policy document.
enum PolicyRestrictionRequireBase {
  valueTrue("true"),
  valueFalse("false");

  const PolicyRestrictionRequireBase(this.value);
  final String value;

  static PolicyRestrictionRequireBase fromValue(String value) {
    for (final item in PolicyRestrictionRequireBase.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRestrictionRequireBase value: $value');
  }
}


/// If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
enum Enforce {
  valueFalse("False"),
  valueTrue("True");

  const Enforce(this.value);
  final String value;

  static Enforce fromValue(String value) {
    for (final item in Enforce.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Enforce value: $value');
  }
}


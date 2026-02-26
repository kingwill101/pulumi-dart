/// Answer this query with a behavior rather than DNS data.
enum ResponsePolicyRuleBehavior2 {
  behaviorUnspecified("behaviorUnspecified"),
  bypassResponsePolicy("bypassResponsePolicy");

  const ResponsePolicyRuleBehavior2(this.value);
  final String value;

  static ResponsePolicyRuleBehavior2 fromValue(String value) {
    for (final item in ResponsePolicyRuleBehavior2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponsePolicyRuleBehavior2 value: $value');
  }
}

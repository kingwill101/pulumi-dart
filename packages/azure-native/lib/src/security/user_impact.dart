/// The user impact of the assessment
enum UserImpact {
  valueLow("Low"),
  valueModerate("Moderate"),
  valueHigh("High");

  const UserImpact(this.value);
  final String value;

  static UserImpact fromValue(String value) {
    for (final item in UserImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserImpact value: $value');
  }
}


/// Day of the week when a cache can be patched.
enum DayOfWeek {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday"),
  everyday("Everyday"),
  weekend("Weekend");

  const DayOfWeek(this.value);
  final String value;

  static DayOfWeek fromValue(String value) {
    for (final item in DayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DayOfWeek value: $value');
  }
}


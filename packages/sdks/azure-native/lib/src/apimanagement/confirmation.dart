/// Determines the type of confirmation e-mail that will be sent to the newly created user.
enum Confirmation {
  valueSignup("signup"),
  valueInvite("invite");

  const Confirmation(this.value);
  final String value;

  static Confirmation fromValue(String value) {
    for (final item in Confirmation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Confirmation value: $value');
  }
}


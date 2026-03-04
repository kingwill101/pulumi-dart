/// Determines the type of confirmation e-mail that will be sent to the newly created user.
enum Confirmation {
  valueSignup("signup"),
  valueInvite("invite");

  const Confirmation(this.wireValue);
  final String wireValue;

  static Confirmation fromValue(String value) {
    for (final item in Confirmation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Confirmation value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the type of confirmation e-mail that will be sent to the newly created user.
enum Confirmation implements pulumi.PulumiEnum<String> {
  valueSignup("signup"),
  valueInvite("invite");

  const Confirmation(this.wireValue);
  @override
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

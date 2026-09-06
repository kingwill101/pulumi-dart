import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of resetting the token.
enum RegistrationTokenOperation implements pulumi.PulumiEnum<String> {
  valueDelete("Delete"),
  valueNone("None"),
  valueUpdate("Update");

  const RegistrationTokenOperation(this.wireValue);
  @override
  final String wireValue;

  static RegistrationTokenOperation fromValue(String value) {
    for (final item in RegistrationTokenOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationTokenOperation value: $value');
  }
}

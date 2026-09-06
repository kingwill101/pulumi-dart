import 'package:pulumi/pulumi.dart' as pulumi;

/// Operation sub type of OS Provisioning
enum OSOperationType implements pulumi.PulumiEnum<String> {
  provision("Provision"),
  update("Update"),
  reImage("ReImage");

  const OSOperationType(this.wireValue);
  @override
  final String wireValue;

  static OSOperationType fromValue(String value) {
    for (final item in OSOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSOperationType value: $value');
  }
}

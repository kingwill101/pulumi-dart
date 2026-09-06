import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum Permission implements pulumi.PulumiEnum<String> {
  fULLCONTROL("FULL_CONTROL"),
  rEAD("READ"),
  rEADACP("READ_ACP"),
  wRITE("WRITE"),
  wRITEACP("WRITE_ACP");

  const Permission(this.wireValue);
  @override
  final String wireValue;

  static Permission fromValue(String value) {
    for (final item in Permission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Permission value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own.
enum ChownMode implements pulumi.PulumiEnum<String> {
  valueRestricted("Restricted"),
  valueUnrestricted("Unrestricted");

  const ChownMode(this.wireValue);
  @override
  final String wireValue;

  static ChownMode fromValue(String value) {
    for (final item in ChownMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChownMode value: $value');
  }
}

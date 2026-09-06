import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the licensing program.
enum LicensingProgram implements pulumi.PulumiEnum<String> {
  retail("Retail"),
  unknown("Unknown"),
  eA("EA"),
  mCA("MCA");

  const LicensingProgram(this.wireValue);
  @override
  final String wireValue;

  static LicensingProgram fromValue(String value) {
    for (final item in LicensingProgram.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicensingProgram value: $value');
  }
}

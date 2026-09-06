import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the program year the volume license is for.
enum ProgramYear implements pulumi.PulumiEnum<String> {
  valueYear1("Year 1"),
  valueYear2("Year 2"),
  valueYear3("Year 3");

  const ProgramYear(this.wireValue);
  @override
  final String wireValue;

  static ProgramYear fromValue(String value) {
    for (final item in ProgramYear.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProgramYear value: $value');
  }
}

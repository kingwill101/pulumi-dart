import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Mode for determining N-Cross validations.
enum NCrossValidationsMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom");

  const NCrossValidationsMode(this.wireValue);
  @override
  final String wireValue;

  static NCrossValidationsMode fromValue(String value) {
    for (final item in NCrossValidationsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NCrossValidationsMode value: $value');
  }
}

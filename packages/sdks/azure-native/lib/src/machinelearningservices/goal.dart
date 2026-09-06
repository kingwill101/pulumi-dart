import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Defines supported metric goals for hyperparameter tuning
enum Goal implements pulumi.PulumiEnum<String> {
  minimize("Minimize"),
  maximize("Maximize");

  const Goal(this.wireValue);
  @override
  final String wireValue;

  static Goal fromValue(String value) {
    for (final item in Goal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Goal value: $value');
  }
}

/// [Required] Defines supported metric goals for hyperparameter tuning
enum Goal {
  valueMinimize("Minimize"),
  valueMaximize("Maximize");

  const Goal(this.wireValue);
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

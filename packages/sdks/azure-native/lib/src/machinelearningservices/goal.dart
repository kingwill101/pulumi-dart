/// [Required] Defines supported metric goals for hyperparameter tuning
enum Goal {
  valueMinimize("Minimize"),
  valueMaximize("Maximize");

  const Goal(this.value);
  final String value;

  static Goal fromValue(String value) {
    for (final item in Goal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Goal value: $value');
  }
}


/// [Required] The machine learning task type of the monitored model.
enum ModelTaskType {
  valueClassification("Classification"),
  valueRegression("Regression");

  const ModelTaskType(this.value);
  final String value;

  static ModelTaskType fromValue(String value) {
    for (final item in ModelTaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelTaskType value: $value');
  }
}


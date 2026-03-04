/// [Required] The machine learning task type of the monitored model.
enum ModelTaskType {
  valueClassification("Classification"),
  valueRegression("Regression");

  const ModelTaskType(this.wireValue);
  final String wireValue;

  static ModelTaskType fromValue(String value) {
    for (final item in ModelTaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelTaskType value: $value');
  }
}

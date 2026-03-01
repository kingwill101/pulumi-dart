/// [Required] Task type for AutoMLJob.
enum TaskType {
  valueClassification("Classification"),
  valueRegression("Regression"),
  valueForecasting("Forecasting"),
  valueImageClassification("ImageClassification"),
  valueImageClassificationMultilabel("ImageClassificationMultilabel"),
  valueImageObjectDetection("ImageObjectDetection"),
  valueImageInstanceSegmentation("ImageInstanceSegmentation"),
  valueTextClassification("TextClassification"),
  valueTextClassificationMultilabel("TextClassificationMultilabel"),
  valueTextNER("TextNER");

  const TaskType(this.value);
  final String value;

  static TaskType fromValue(String value) {
    for (final item in TaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskType value: $value');
  }
}


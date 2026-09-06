import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Task type for AutoMLJob.
enum TaskType implements pulumi.PulumiEnum<String> {
  classification("Classification"),
  regression("Regression"),
  forecasting("Forecasting"),
  imageClassification("ImageClassification"),
  imageClassificationMultilabel("ImageClassificationMultilabel"),
  imageObjectDetection("ImageObjectDetection"),
  imageInstanceSegmentation("ImageInstanceSegmentation"),
  textClassification("TextClassification"),
  textClassificationMultilabel("TextClassificationMultilabel"),
  textNER("TextNER");

  const TaskType(this.wireValue);
  @override
  final String wireValue;

  static TaskType fromValue(String value) {
    for (final item in TaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskType value: $value');
  }
}

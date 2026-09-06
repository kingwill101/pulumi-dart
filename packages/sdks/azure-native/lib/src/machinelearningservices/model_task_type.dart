import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The machine learning task type of the monitored model.
enum ModelTaskType implements pulumi.PulumiEnum<String> {
  classification("Classification"),
  regression("Regression");

  const ModelTaskType(this.wireValue);
  @override
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

/// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
/// Note: training run may get into CUDA OOM if the model size is too big.
/// Note: This settings is only supported for the 'yolov5' algorithm.
enum ModelSize {
  valueNone("None"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large"),
  valueExtraLarge("ExtraLarge");

  const ModelSize(this.wireValue);
  final String wireValue;

  static ModelSize fromValue(String value) {
    for (final item in ModelSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelSize value: $value');
  }
}

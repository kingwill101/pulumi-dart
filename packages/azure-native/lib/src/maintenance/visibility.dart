/// Gets or sets the visibility of the configuration. The default value is 'Custom'
enum Visibility {
  custom("Custom"),
  public("Public");

  const Visibility(this.value);
  final String value;

  static Visibility fromValue(String value) {
    for (final item in Visibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Visibility value: $value');
  }
}


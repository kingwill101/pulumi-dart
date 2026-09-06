import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the visibility of the configuration. The default value is 'Custom'
enum Visibility implements pulumi.PulumiEnum<String> {
  custom("Custom"),
  public("Public");

  const Visibility(this.wireValue);
  @override
  final String wireValue;

  static Visibility fromValue(String value) {
    for (final item in Visibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Visibility value: $value');
  }
}

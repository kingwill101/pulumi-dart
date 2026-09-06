import 'package:pulumi/pulumi.dart' as pulumi;

/// Image model size.
enum ModelSize implements pulumi.PulumiEnum<String> {
  none("None"),
  small("Small"),
  medium("Medium"),
  large("Large"),
  extraLarge("ExtraLarge");

  const ModelSize(this.wireValue);
  @override
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

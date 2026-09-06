import 'package:pulumi/pulumi.dart' as pulumi;

/// Level at which content is filtered.
enum ContentLevel implements pulumi.PulumiEnum<String> {
  low("Low"),
  medium("Medium"),
  high("High");

  const ContentLevel(this.wireValue);
  @override
  final String wireValue;

  static ContentLevel fromValue(String value) {
    for (final item in ContentLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentLevel value: $value');
  }
}

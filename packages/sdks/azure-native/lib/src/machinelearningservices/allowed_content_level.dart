import 'package:pulumi/pulumi.dart' as pulumi;

/// Level at which content is filtered.
enum AllowedContentLevel implements pulumi.PulumiEnum<String> {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const AllowedContentLevel(this.wireValue);
  @override
  final String wireValue;

  static AllowedContentLevel fromValue(String value) {
    for (final item in AllowedContentLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedContentLevel value: $value');
  }
}

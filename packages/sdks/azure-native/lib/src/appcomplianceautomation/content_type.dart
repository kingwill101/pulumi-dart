import 'package:pulumi/pulumi.dart' as pulumi;

/// content type
enum ContentType implements pulumi.PulumiEnum<String> {
  applicationJson("application/json");

  const ContentType(this.wireValue);
  @override
  final String wireValue;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}

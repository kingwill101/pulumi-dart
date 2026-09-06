import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the content source type.
enum ContentSourceType implements pulumi.PulumiEnum<String> {
  embeddedContent("embeddedContent"),
  uri("uri");

  const ContentSourceType(this.wireValue);
  @override
  final String wireValue;

  static ContentSourceType fromValue(String value) {
    for (final item in ContentSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSourceType value: $value');
  }
}

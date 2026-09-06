import 'package:pulumi/pulumi.dart' as pulumi;

/// Publisher type of the namespace topic.
enum PublisherType implements pulumi.PulumiEnum<String> {
  valueCustom("Custom");

  const PublisherType(this.wireValue);
  @override
  final String wireValue;

  static PublisherType fromValue(String value) {
    for (final item in PublisherType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherType value: $value');
  }
}

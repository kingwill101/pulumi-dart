import 'package:pulumi/pulumi.dart' as pulumi;

/// The publisher scope.
enum PublisherScope implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valuePrivate("Private");

  const PublisherScope(this.wireValue);
  @override
  final String wireValue;

  static PublisherScope fromValue(String value) {
    for (final item in PublisherScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherScope value: $value');
  }
}

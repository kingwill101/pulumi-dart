import 'package:pulumi/pulumi.dart' as pulumi;

/// Operating system feed type of the device group.
enum OSFeedType implements pulumi.PulumiEnum<String> {
  retail("Retail"),
  retailEval("RetailEval");

  const OSFeedType(this.wireValue);
  @override
  final String wireValue;

  static OSFeedType fromValue(String value) {
    for (final item in OSFeedType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSFeedType value: $value');
  }
}

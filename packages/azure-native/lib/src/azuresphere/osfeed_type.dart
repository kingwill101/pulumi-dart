/// Operating system feed type of the device group.
enum OSFeedType {
  retail("Retail"),
  retailEval("RetailEval");

  const OSFeedType(this.value);
  final String value;

  static OSFeedType fromValue(String value) {
    for (final item in OSFeedType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSFeedType value: $value');
  }
}


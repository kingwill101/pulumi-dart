/// Server version.
enum SingleServerVersion {
  value56("5.6"),
  value57("5.7"),
  value80("8.0");

  const SingleServerVersion(this.value);
  final String value;

  static SingleServerVersion fromValue(String value) {
    for (final item in SingleServerVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerVersion value: $value');
  }
}


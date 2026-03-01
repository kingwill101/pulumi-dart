/// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
enum RequestSource {
  valueRest("rest");

  const RequestSource(this.value);
  final String value;

  static RequestSource fromValue(String value) {
    for (final item in RequestSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSource value: $value');
  }
}


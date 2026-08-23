/// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
enum RequestSource {
  rest("rest");

  const RequestSource(this.wireValue);
  final String wireValue;

  static RequestSource fromValue(String value) {
    for (final item in RequestSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSource value: $value');
  }
}
